//STM32F4main01.c wmh 2013-02-02 : trying t get a barebones 'main()' to compile
/*----------------------------------------------------------------------------
 * Name:    Blinky.c
 * Purpose: LED Flasher
 * Note(s): 
 *----------------------------------------------------------------------------
 * This file is part of the uVision/ARM development tools.
 * This software may only be used under the terms of a valid, current,
 * end user licence from KEIL for a compatible version of KEIL software
 * development tools. Nothing else gives you the right to use this software.
 *
 * This software is supplied "AS IS" without warranties of any kind.
 *
 * Copyright (c) 2011 Keil - An ARM Company. All rights reserved.
 *----------------------------------------------------------------------------*/

//global variables used in CortexM4asmOps_01.asm but defined here
	int Cint;
	int SEG7_COUNTER = 1;
	int SEG7_DIGIT1 = 14; //Initialize seg7 to "Ehn3"
	int SEG7_DIGIT2 = 15;
	int SEG7_DIGIT3 = 16;
	int SEG7_DIGIT4 = 3;
	int SEG7_COLON_DEGREE = 10; //10-OFF, 11-colon, 12-degree, 13-colon and degree
	int LED_GREEN = 0xC;
	int LED_RED = 0x3;
	int SWITCHES = 0x0;
<<<<<<< HEAD
	int SAMPLE_COUNTER=0;
	#define QUEUE_SIZE 20
	int SW_QUEUE[QUEUE_SIZE] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	int	QUEUE_COUNTER = 0;
	int SW_STATE = 0x0;
	int SW_POS_EDGE = 0x0;
	int SW_NEG_EDGE = 0x0;
	int SW_PULSE = 0x0;
	int PULSE_STATE = 0x0;
		
=======
	#define SWITCH_SAMPLES 20
	int SWITCH_QUEUE[SWITCH_SAMPLES] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	int SWITCH_COUNTER = 0;
	int DEBOUNCE_COUNTER=0;
	int SWITCH_DEBOUNCE = 0;
>>>>>>> parent of f86263d... edge triggering
	int SW_READ_ODD = 0;
	int SW_READ_EVEN = 0;
	int FREQ_VAL = 125;
	int TEST_VAL = -10;
	int MODE = 0;
	
	#define FREQ_MODE 1
	#define TEST_MODE 2
	
	
//!!added stuff to get it to compile
  #include <stdint.h>	//various versions of this in yagarto -- gives unint32_t and other definitions

  //disable some bothersome type identifiers 
  #define __IO  		
  #define __I
  #define __O

  uint32_t SystemCoreClock; 	//!!found in system_stm32f4xx.c, added here as global but initialized in main()
  
  //things we found in stm32f4xx.h and copied here to to squelch compiler complaints
  #define PERIPH_BASE           ((uint32_t)0x40000000)
  #define AHB1PERIPH_BASE       (PERIPH_BASE + 0x00020000)
  #define RCC_BASE              (AHB1PERIPH_BASE + 0x3800)
  #define GPIOA_BASE            (AHB1PERIPH_BASE + 0x0000)
	#define GPIOA               	((GPIO_TypeDef *) GPIOA_BASE)
	#define GPIOB_BASE            (AHB1PERIPH_BASE + 0x0400)
	#define GPIOB               	((GPIO_TypeDef *) GPIOB_BASE)
	#define GPIOC_BASE            (AHB1PERIPH_BASE + 0x0800)
	#define GPIOC               	((GPIO_TypeDef *) GPIOC_BASE)
  #define GPIOD_BASE            (AHB1PERIPH_BASE + 0x0C00)
  #define GPIOD               ((GPIO_TypeDef *) GPIOD_BASE)
	
typedef struct
{
  __IO uint32_t MODER;    /*!< GPIO port mode register,               Address offset: 0x00      */
  __IO uint32_t OTYPER;   /*!< GPIO port output type register,        Address offset: 0x04      */
  __IO uint32_t OSPEEDR;  /*!< GPIO port output speed register,       Address offset: 0x08      */
  __IO uint32_t PUPDR;    /*!< GPIO port pull-up/pull-down register,  Address offset: 0x0C      */
  __IO uint32_t IDR;      /*!< GPIO port input data register,         Address offset: 0x10      */
  __IO uint32_t ODR;      /*!< GPIO port output data register,        Address offset: 0x14      */
  __IO uint16_t BSRRL;    /*!< GPIO port bit set/reset low register,  Address offset: 0x18      */
  __IO uint16_t BSRRH;    /*!< GPIO port bit set/reset high register, Address offset: 0x1A      */
  __IO uint32_t LCKR;     /*!< GPIO port configuration lock register, Address offset: 0x1C      */
  __IO uint32_t AFR[2];   /*!< GPIO alternate function registers,     Address offset: 0x20-0x24 */
} GPIO_TypeDef; 

  #define GPIOA               	((GPIO_TypeDef *) GPIOA_BASE)
  
typedef struct
{
  __IO uint32_t CR;            /*!< RCC clock control register,                                  Address offset: 0x00 */
  __IO uint32_t PLLCFGR;       /*!< RCC PLL configuration register,                              Address offset: 0x04 */
  __IO uint32_t CFGR;          /*!< RCC clock configuration register,                            Address offset: 0x08 */
  __IO uint32_t CIR;           /*!< RCC clock interrupt register,                                Address offset: 0x0C */
  __IO uint32_t AHB1RSTR;      /*!< RCC AHB1 peripheral reset register,                          Address offset: 0x10 */
  __IO uint32_t AHB2RSTR;      /*!< RCC AHB2 peripheral reset register,                          Address offset: 0x14 */
  __IO uint32_t AHB3RSTR;      /*!< RCC AHB3 peripheral reset register,                          Address offset: 0x18 */
  uint32_t      RESERVED0;     /*!< Reserved, 0x1C                                                                    */
  __IO uint32_t APB1RSTR;      /*!< RCC APB1 peripheral reset register,                          Address offset: 0x20 */
  __IO uint32_t APB2RSTR;      /*!< RCC APB2 peripheral reset register,                          Address offset: 0x24 */
  uint32_t      RESERVED1[2];  /*!< Reserved, 0x28-0x2C                                                               */
  __IO uint32_t AHB1ENR;       /*!< RCC AHB1 peripheral clock register,                          Address offset: 0x30 */
  __IO uint32_t AHB2ENR;       /*!< RCC AHB2 peripheral clock register,                          Address offset: 0x34 */
  __IO uint32_t AHB3ENR;       /*!< RCC AHB3 peripheral clock register,                          Address offset: 0x38 */
  uint32_t      RESERVED2;     /*!< Reserved, 0x3C                                                                    */
  __IO uint32_t APB1ENR;       /*!< RCC APB1 peripheral clock enable register,                   Address offset: 0x40 */
  __IO uint32_t APB2ENR;       /*!< RCC APB2 peripheral clock enable register,                   Address offset: 0x44 */
  uint32_t      RESERVED3[2];  /*!< Reserved, 0x48-0x4C                                                               */
  __IO uint32_t AHB1LPENR;     /*!< RCC AHB1 peripheral clock enable in low power mode register, Address offset: 0x50 */
  __IO uint32_t AHB2LPENR;     /*!< RCC AHB2 peripheral clock enable in low power mode register, Address offset: 0x54 */
  __IO uint32_t AHB3LPENR;     /*!< RCC AHB3 peripheral clock enable in low power mode register, Address offset: 0x58 */
  uint32_t      RESERVED4;     /*!< Reserved, 0x5C                                                                    */
  __IO uint32_t APB1LPENR;     /*!< RCC APB1 peripheral clock enable in low power mode register, Address offset: 0x60 */
  __IO uint32_t APB2LPENR;     /*!< RCC APB2 peripheral clock enable in low power mode register, Address offset: 0x64 */
  uint32_t      RESERVED5[2];  /*!< Reserved, 0x68-0x6C                                                               */
  __IO uint32_t BDCR;          /*!< RCC Backup domain control register,                          Address offset: 0x70 */
  __IO uint32_t CSR;           /*!< RCC clock control & status register,                         Address offset: 0x74 */
  uint32_t      RESERVED6[2];  /*!< Reserved, 0x78-0x7C                                                               */
  __IO uint32_t SSCGR;         /*!< RCC spread spectrum clock generation register,               Address offset: 0x80 */
  __IO uint32_t PLLI2SCFGR;    /*!< RCC PLLI2S configuration register,                           Address offset: 0x84 */
} RCC_TypeDef;
  
  #define RCC                 ((RCC_TypeDef *) RCC_BASE)
  
//!!things we commented out to squelch compiler complaints
//#include <stdio.h>				
//#include "STM32F4xx.h"

//!!things we cribbed from "STM32F4xx.h" to squelch complaints
#define  RCC_CFGR_SWS                        ((uint32_t)0x0000000C)        /*!< SWS[1:0] bits (System Clock Switch Status) */
#define HSI_VALUE    ((uint32_t)16000000) /*!< Value of the Internal oscillator in Hz*/
#define HSE_VALUE    ((uint32_t)25000000) /*!< Value of the External oscillator in Hz */
#define  RCC_PLLCFGR_PLLSRC                  ((uint32_t)0x00400000)
#define  RCC_PLLCFGR_PLLM                    ((uint32_t)0x0000003F)
#define  RCC_PLLCFGR_PLLN                     ((uint32_t)0x00007FC0)
#define  RCC_PLLCFGR_PLLP                    ((uint32_t)0x00030000)
#define __NVIC_PRIO_BITS          4       /*!< STM32F4XX uses 4 Bits for the Priority Levels */
typedef enum IRQn
{
/******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/
  NonMaskableInt_IRQn         = -14,    /*!< 2 Non Maskable Interrupt                                          */
  MemoryManagement_IRQn       = -12,    /*!< 4 Cortex-M4 Memory Management Interrupt                           */
  BusFault_IRQn               = -11,    /*!< 5 Cortex-M4 Bus Fault Interrupt                                   */
  UsageFault_IRQn             = -10,    /*!< 6 Cortex-M4 Usage Fault Interrupt                                 */
  SVCall_IRQn                 = -5,     /*!< 11 Cortex-M4 SV Call Interrupt                                    */
  DebugMonitor_IRQn           = -4,     /*!< 12 Cortex-M4 Debug Monitor Interrupt                              */
  PendSV_IRQn                 = -2,     /*!< 14 Cortex-M4 Pend SV Interrupt                                    */
  SysTick_IRQn                = -1,     /*!< 15 Cortex-M4 System Tick Interrupt                                */
/******  STM32 specific Interrupt Numbers **********************************************************************/
  WWDG_IRQn                   = 0,      /*!< Window WatchDog Interrupt                                         */
  PVD_IRQn                    = 1,      /*!< PVD through EXTI Line detection Interrupt                         */
  TAMP_STAMP_IRQn             = 2,      /*!< Tamper and TimeStamp interrupts through the EXTI line             */
  RTC_WKUP_IRQn               = 3,      /*!< RTC Wakeup interrupt through the EXTI line                        */
  FLASH_IRQn                  = 4,      /*!< FLASH global Interrupt                                            */
  RCC_IRQn                    = 5,      /*!< RCC global Interrupt                                              */
  EXTI0_IRQn                  = 6,      /*!< EXTI Line0 Interrupt                                              */
  EXTI1_IRQn                  = 7,      /*!< EXTI Line1 Interrupt                                              */
  EXTI2_IRQn                  = 8,      /*!< EXTI Line2 Interrupt                                              */
  EXTI3_IRQn                  = 9,      /*!< EXTI Line3 Interrupt                                              */
  EXTI4_IRQn                  = 10,     /*!< EXTI Line4 Interrupt                                              */
  DMA1_Stream0_IRQn           = 11,     /*!< DMA1 Stream 0 global Interrupt                                    */
  DMA1_Stream1_IRQn           = 12,     /*!< DMA1 Stream 1 global Interrupt                                    */
  DMA1_Stream2_IRQn           = 13,     /*!< DMA1 Stream 2 global Interrupt                                    */
  DMA1_Stream3_IRQn           = 14,     /*!< DMA1 Stream 3 global Interrupt                                    */
  DMA1_Stream4_IRQn           = 15,     /*!< DMA1 Stream 4 global Interrupt                                    */
  DMA1_Stream5_IRQn           = 16,     /*!< DMA1 Stream 5 global Interrupt                                    */
  DMA1_Stream6_IRQn           = 17,     /*!< DMA1 Stream 6 global Interrupt                                    */
  ADC_IRQn                    = 18,     /*!< ADC1, ADC2 and ADC3 global Interrupts                             */
  CAN1_TX_IRQn                = 19,     /*!< CAN1 TX Interrupt                                                 */
  CAN1_RX0_IRQn               = 20,     /*!< CAN1 RX0 Interrupt                                                */
  CAN1_RX1_IRQn               = 21,     /*!< CAN1 RX1 Interrupt                                                */
  CAN1_SCE_IRQn               = 22,     /*!< CAN1 SCE Interrupt                                                */
  EXTI9_5_IRQn                = 23,     /*!< External Line[9:5] Interrupts                                     */
  TIM1_BRK_TIM9_IRQn          = 24,     /*!< TIM1 Break interrupt and TIM9 global interrupt                    */
  TIM1_UP_TIM10_IRQn          = 25,     /*!< TIM1 Update Interrupt and TIM10 global interrupt                  */
  TIM1_TRG_COM_TIM11_IRQn     = 26,     /*!< TIM1 Trigger and Commutation Interrupt and TIM11 global interrupt */
  TIM1_CC_IRQn                = 27,     /*!< TIM1 Capture Compare Interrupt                                    */
  TIM2_IRQn                   = 28,     /*!< TIM2 global Interrupt                                             */
  TIM3_IRQn                   = 29,     /*!< TIM3 global Interrupt                                             */
  TIM4_IRQn                   = 30,     /*!< TIM4 global Interrupt                                             */
  I2C1_EV_IRQn                = 31,     /*!< I2C1 Event Interrupt                                              */
  I2C1_ER_IRQn                = 32,     /*!< I2C1 Error Interrupt                                              */
  I2C2_EV_IRQn                = 33,     /*!< I2C2 Event Interrupt                                              */
  I2C2_ER_IRQn                = 34,     /*!< I2C2 Error Interrupt                                              */  
  SPI1_IRQn                   = 35,     /*!< SPI1 global Interrupt                                             */
  SPI2_IRQn                   = 36,     /*!< SPI2 global Interrupt                                             */
  USART1_IRQn                 = 37,     /*!< USART1 global Interrupt                                           */
  USART2_IRQn                 = 38,     /*!< USART2 global Interrupt                                           */
  USART3_IRQn                 = 39,     /*!< USART3 global Interrupt                                           */
  EXTI15_10_IRQn              = 40,     /*!< External Line[15:10] Interrupts                                   */
  RTC_Alarm_IRQn              = 41,     /*!< RTC Alarm (A and B) through EXTI Line Interrupt                   */
  OTG_FS_WKUP_IRQn            = 42,     /*!< USB OTG FS Wakeup through EXTI line interrupt                     */    
  TIM8_BRK_TIM12_IRQn         = 43,     /*!< TIM8 Break Interrupt and TIM12 global interrupt                   */
  TIM8_UP_TIM13_IRQn          = 44,     /*!< TIM8 Update Interrupt and TIM13 global interrupt                  */
  TIM8_TRG_COM_TIM14_IRQn     = 45,     /*!< TIM8 Trigger and Commutation Interrupt and TIM14 global interrupt */
  TIM8_CC_IRQn                = 46,     /*!< TIM8 Capture Compare Interrupt                                    */
  DMA1_Stream7_IRQn           = 47,     /*!< DMA1 Stream7 Interrupt                                            */
  FSMC_IRQn                   = 48,     /*!< FSMC global Interrupt                                             */
  SDIO_IRQn                   = 49,     /*!< SDIO global Interrupt                                             */
  TIM5_IRQn                   = 50,     /*!< TIM5 global Interrupt                                             */
  SPI3_IRQn                   = 51,     /*!< SPI3 global Interrupt                                             */
  UART4_IRQn                  = 52,     /*!< UART4 global Interrupt                                            */
  UART5_IRQn                  = 53,     /*!< UART5 global Interrupt                                            */
  TIM6_DAC_IRQn               = 54,     /*!< TIM6 global and DAC1&2 underrun error  interrupts                 */
  TIM7_IRQn                   = 55,     /*!< TIM7 global interrupt                                             */
  DMA2_Stream0_IRQn           = 56,     /*!< DMA2 Stream 0 global Interrupt                                    */
  DMA2_Stream1_IRQn           = 57,     /*!< DMA2 Stream 1 global Interrupt                                    */
  DMA2_Stream2_IRQn           = 58,     /*!< DMA2 Stream 2 global Interrupt                                    */
  DMA2_Stream3_IRQn           = 59,     /*!< DMA2 Stream 3 global Interrupt                                    */
  DMA2_Stream4_IRQn           = 60,     /*!< DMA2 Stream 4 global Interrupt                                    */
  ETH_IRQn                    = 61,     /*!< Ethernet global Interrupt                                         */
  ETH_WKUP_IRQn               = 62,     /*!< Ethernet Wakeup through EXTI line Interrupt                       */
  CAN2_TX_IRQn                = 63,     /*!< CAN2 TX Interrupt                                                 */
  CAN2_RX0_IRQn               = 64,     /*!< CAN2 RX0 Interrupt                                                */
  CAN2_RX1_IRQn               = 65,     /*!< CAN2 RX1 Interrupt                                                */
  CAN2_SCE_IRQn               = 66,     /*!< CAN2 SCE Interrupt                                                */
  OTG_FS_IRQn                 = 67,     /*!< USB OTG FS global Interrupt                                       */
  DMA2_Stream5_IRQn           = 68,     /*!< DMA2 Stream 5 global interrupt                                    */
  DMA2_Stream6_IRQn           = 69,     /*!< DMA2 Stream 6 global interrupt                                    */
  DMA2_Stream7_IRQn           = 70,     /*!< DMA2 Stream 7 global interrupt                                    */
  USART6_IRQn                 = 71,     /*!< USART6 global interrupt                                           */ 
  I2C3_EV_IRQn                = 72,     /*!< I2C3 event interrupt                                              */
  I2C3_ER_IRQn                = 73,     /*!< I2C3 error interrupt                                              */
  OTG_HS_EP1_OUT_IRQn         = 74,     /*!< USB OTG HS End Point 1 Out global interrupt                       */
  OTG_HS_EP1_IN_IRQn          = 75,     /*!< USB OTG HS End Point 1 In global interrupt                        */
  OTG_HS_WKUP_IRQn            = 76,     /*!< USB OTG HS Wakeup through EXTI interrupt                          */
  OTG_HS_IRQn                 = 77,     /*!< USB OTG HS global interrupt                                       */
  DCMI_IRQn                   = 78,     /*!< DCMI global interrupt                                             */
  CRYP_IRQn                   = 79,     /*!< CRYP crypto global interrupt                                      */
  HASH_RNG_IRQn               = 80,      /*!< Hash and Rng global interrupt                                     */
  FPU_IRQn                    = 81      /*!< FPU global interrupt                                              */
} IRQn_Type;



//!!things we left in to squelch compiler complaints
 #include "LED.h"

 //!!code and definitions cribbed from C:\Keil_MDK460\ARM\CMSIS\Include\core_cm4.h
 /** \brief  Structure type to access the System Timer (SysTick).
 */
typedef struct
{
  __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Register */
  __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register       */
  __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register      */
  __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register        */
} SysTick_Type;
#define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address               */
#define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration struct       */

/** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 */
typedef struct
{
  __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register           */
       uint32_t RESERVED0[24];
  __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register         */
       uint32_t RSERVED1[24];
  __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register          */
       uint32_t RESERVED2[24];
  __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register        */
       uint32_t RESERVED3[24];
  __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register           */
       uint32_t RESERVED4[56];
  __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bit wide) */
       uint32_t RESERVED5[644];
  __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Register     */
}  NVIC_Type;
#define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address                  */
#define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struct          */

/** \brief  Structure type to access the System Control Block (SCB).
 */
typedef struct
{
  __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register                                   */
  __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Register                  */
  __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register                          */
  __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register      */
  __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register                               */
  __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register                        */
  __IO uint8_t  SHP[12];                 /*!< Offset: 0x018 (R/W)  System Handlers Priority Registers (4-7, 8-11, 12-15) */
  __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State Register             */
  __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Register                    */
  __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register                             */
  __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register                           */
  __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register                      */
  __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register                             */
  __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register                       */
  __I  uint32_t PFR[2];                  /*!< Offset: 0x040 (R/ )  Processor Feature Register                            */
  __I  uint32_t DFR;                     /*!< Offset: 0x048 (R/ )  Debug Feature Register                                */
  __I  uint32_t ADR;                     /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register                            */
  __I  uint32_t MMFR[4];                 /*!< Offset: 0x050 (R/ )  Memory Model Feature Register                         */
  __I  uint32_t ISAR[5];                 /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Register                   */
       uint32_t RESERVED0[5];
  __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Register                   */
} SCB_Type;
#define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Base Address  */
#define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct           */


#define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Base Address  */

/* SysTick Control / Status Register Definitions */
#define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysTick CTRL: COUNTFLAG Position */
#define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysTick CTRL: COUNTFLAG Mask */

#define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysTick CTRL: CLKSOURCE Position */
#define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysTick CTRL: CLKSOURCE Mask */

#define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysTick CTRL: TICKINT Position */
#define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysTick CTRL: TICKINT Mask */

#define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysTick CTRL: ENABLE Position */
#define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysTick CTRL: ENABLE Mask */

/* SysTick Reload Register Definitions */
#define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysTick LOAD: RELOAD Position */
#define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysTick LOAD: RELOAD Mask */

/* SysTick Current Register Definitions */
#define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysTick VAL: CURRENT Position */
#define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysTick VAL: CURRENT Mask */

/* SysTick Calibration Register Definitions */
#define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysTick CALIB: NOREF Position */
#define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysTick CALIB: NOREF Mask */

#define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysTick CALIB: SKEW Position */
#define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysTick CALIB: SKEW Mask */

#define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysTick CALIB: TENMS Position */
#define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysTick CALIB: TENMS Mask */

/*@} end of group CMSIS_SysTick */

void SystemCoreClockUpdate(void)
{
  uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;
  
  /* Get SYSCLK source -------------------------------------------------------*/
  tmp = RCC->CFGR & RCC_CFGR_SWS;

  switch (tmp)
  {
    case 0x00:  /* HSI used as system clock source */
      SystemCoreClock = HSI_VALUE;
      break;
    case 0x04:  /* HSE used as system clock source */
      SystemCoreClock = HSE_VALUE;
      break;
    case 0x08:  /* PLL used as system clock source */

      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL_M) * PLL_N
         SYSCLK = PLL_VCO / PLL_P
         */    
      pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
      
      if (pllsource != 0)
      {
        /* HSE used as PLL clock source */
        pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);      
      }

      pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
      SystemCoreClock = pllvco/pllp;
      break;
    default:
      SystemCoreClock = HSI_VALUE;
      break;
  }
}
 

//__STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
  else {
    NVIC->IP[(uint32_t)(IRQn)] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff);    }        /* set Priority for device specific Interrupts  */
}
 
 //__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks) - change to gcc 'static inline' convention
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */

  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTick Timer */
  return (0);                                                  /* Function successful */
}

volatile uint32_t msTicks;                      /* counts 1ms timeTicks       */
/*----------------------------------------------------------------------------
  SysTick_Handler
 *----------------------------------------------------------------------------*/
void SysTick_Handler(void) {
  msTicks++; //need this for Delay()
<<<<<<< HEAD
	seg7_handler();
	
	//RUN EVERY 100 ms
	if (SAMPLE_COUNTER < 20) {
		SAMPLE_COUNTER++;
=======
	if (DEBOUNCE_COUNTER < 20) {
		DEBOUNCE_COUNTER++;
>>>>>>> parent of f86263d... edge triggering
	}
	else {
		switch_cluster_handler();
		mode_handler();
		DEBOUNCE_COUNTER = 0;
	}
	//switch_queue_handler();
	seg7_handler();
}

/*----------------------------------------------------------------------------
  switch_debounce_handler function
 *----------------------------------------------------------------------------*/
void switch_debounce_handler() {
	if (SWITCH_COUNTER == SWITCH_SAMPLES) { //update every SWITCH_SAMPLES
		int j=0;
		for (j=0; j<13; j++) { //loop through all switches
			int i=0;
			for (i=0; i<SWITCH_SAMPLES-1; i++) {
				if ((SWITCH_QUEUE[i] & (0x1ul<<j)) != (SWITCH_QUEUE[i+1] & (0x1ul<<j))) {
					break;
				}
			}
			if (i == SWITCH_SAMPLES-1) { //if loop makes it all the way through a.k.a. all switch samples are the same value
				//update SWITCH_DEBOUNCE
				SWITCH_DEBOUNCE &= ~(0x1ul<<j); //reset bit
				SWITCH_DEBOUNCE += SWITCH_QUEUE[0] & (0x1ul<<j); //set bit
			}
		}
	}
}

/*----------------------------------------------------------------------------
  switch_queue_handler function
 *----------------------------------------------------------------------------*/
void switch_queue_handler() { //build the switch queue
	//NOTE: not actually a queue simply ovewrites oldest sample with newest
	if (SWITCH_COUNTER < SWITCH_SAMPLES) {
		SWITCH_QUEUE[SWITCH_COUNTER] = SWITCHES;
		SWITCH_COUNTER++;
	}
	else {
		SWITCH_COUNTER = 0; //reset switch counter
	}
}

/*----------------------------------------------------------------------------
  mode_handler function
 *----------------------------------------------------------------------------*/
void mode_handler() {
	switch(MODE){
		case 0: //INIT_MODE
			if ((SWITCHES >> 8)&(0x1L)) { //if SW9 is pressed
				MODE = FREQ_MODE;
			}
			else if ((SWITCHES >> 9)&(0x1L)) { //if SW10 is pressed
				MODE = TEST_MODE;
			}
			break;
		case 1: //FREQ_MODE
			freq_mode_handler();
			break;
		case 2: //TEST_MODE
			test_mode_handler();
			break;
	}
}

/*----------------------------------------------------------------------------
  freq_mode_handler function
 *----------------------------------------------------------------------------*/
void freq_mode_handler() {
	display_frequency();
	if ((SWITCHES >> 9)&(0x1)) { //if SW10 is pressed
		MODE = TEST_MODE;
	}	
	if ((SW_POS_EDGE & 0x1) && (FREQ_VAL <= 7000)) { //SW1
		FREQ_VAL += 1000;
	}
	if (((SW_POS_EDGE >> 1) & 0x1) && (FREQ_VAL >= 1125)) { //SW2
		FREQ_VAL -= 1000;
	}
}


/*----------------------------------------------------------------------------
  display_frequency function
 *----------------------------------------------------------------------------*/
void display_frequency(){
	//We know the frequency will be inbetween 125 and 8000
	int freq = FREQ_VAL;
	//DIGIT1
	if (freq > 999) {
		SEG7_DIGIT1 = freq / 1000;
		freq -= 1000*SEG7_DIGIT1;
	}
	else {
		SEG7_DIGIT1 = 10;
	}
	//DIGIT2-4
	SEG7_DIGIT2 = freq / 100;
	freq -= 100*SEG7_DIGIT2;
	SEG7_DIGIT3 = freq / 10;
	freq -= 10*SEG7_DIGIT3;
	SEG7_DIGIT4 = freq;
}
/*----------------------------------------------------------------------------
  test_mode_handler function
 *----------------------------------------------------------------------------*/
void test_mode_handler() {
  display_intensity();
	if ((SWITCHES >> 8)&(0x1L)) { //if SW9 is pressed
		MODE = FREQ_MODE;
	}	
}

/*----------------------------------------------------------------------------
  display_intensity function
 *----------------------------------------------------------------------------*/
void display_intensity() {
	int val = TEST_VAL;
	//DIGIT1
	SEG7_DIGIT1 = 10; //off
	//DIGIT2
	if (val < 0) {
		SEG7_DIGIT2 = 17; //'-'
		val *= -1;
	}
	else if (val < 100){
		SEG7_DIGIT2 = 10; //off
	}
	else {
		SEG7_DIGIT2 = val / 100;
		val -= 100*SEG7_DIGIT2;
	}
	//DIGIT3,4
	SEG7_DIGIT3 = val / 10;
	val -= 10*SEG7_DIGIT3;
	SEG7_DIGIT4 = val;
}

/*----------------------------------------------------------------------------
  switch_cluster_handler function
 *----------------------------------------------------------------------------*/
void switch_cluster_handler() {
	switch_handler(1);
	switch_handler(3);
	switch_handler(5);
	switch_handler(7);
	switch_handler(9);
	switch_handler(11);
	switch_handler(13);
}

/*----------------------------------------------------------------------------
  switch_handler function
 *----------------------------------------------------------------------------*/
void switch_handler(int sw_set) {
	//initialize (disable) anode lines to prevent flicker in seven segment
	GPIOC->BSRRL |= (1ul << 2); //set DIGIT1 anode (PC2) high
	GPIOA->BSRRL |= (1ul << 1); //set DIGIT2 anode (PA1) high
	GPIOC->BSRRL |= (1ul << 4); //set DIGIT3 anode (PC4) high
	GPIOB->BSRRL |= (1ul << 1); //set DIGIT4 anode (PB1) high
	GPIOC->BSRRL |= (1ul << 5); //set COLON  anode (PC5) high
	GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
	GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
	
	//clock anode driver
	GPIOC->BSRRH |= (1ul << 11); //set AN_CLK (PC11) low
	GPIOC->BSRRL |= (1ul << 11); //set AN_CLK (PC11) high

	//enable anode driver
	GPIOB->BSRRH |= (1ul << 4); //set AN_EN (PB4) low b/c active low
	
	//initialize all cathode lines
	GPIOB->BSRRL |= (1ul << 5); //set SW_1-2 | CA_D | PB5 high
	GPIOB->BSRRL |= (1ul << 11); //set SW_3-4 | CA_E | PB11 high
	GPIOB->BSRRL |= (1ul << 0); //set SW_5-6 | CA_DP | PB0 high
	GPIOB->BSRRL |= (1ul << 1); //set SW_7-8 | CA_B | PB1 high
	GPIOC->BSRRL |= (1ul << 4); //set SW_9-10 | CA_G | PC4 high
	GPIOC->BSRRL |= (1ul << 5); //set SW_11-12 | CA_A | PC5 high
	GPIOA->BSRRL |= (1ul << 1); //set SW_13 | CA_C | PA1 high	
	
	//set switch pair cathode lines
	switch (sw_set) {
		case 1: //SW_1-2
			GPIOB->BSRRH |= (1ul << 5); //set SW_1-2 | CA_D | PB5 low
			break;
		case 3: //SW_3-4
			GPIOB->BSRRH |= (1ul << 11); //set SW_3-4 | CA_E | PB11 low
			break;
		case 5: //SW_5-6
			GPIOB->BSRRH |= (1ul << 0); //set SW_5-6 | CA_DP | PB0 low
			break;
		case 7: //SW_7-8
			GPIOB->BSRRH |= (1ul << 1); //set SW_7-8 | CA_B | PB1 low
			break;
		case 9: //SW_9-10
			GPIOC->BSRRH |= (1ul << 4); //set SW_9-10 | CA_G | PC4 low
			break;
		case 11: //SW_11-12
			GPIOC->BSRRH |= (1ul << 5); //set SW_11-12 | CA_A | PC5 low
			break;
		case 13: //SW_13
			GPIOA->BSRRH |= (1ul << 1); //set SW_13 | CA_C | PA1 low	
			break;
	}
	
	//clock cathode driver
	GPIOD->BSRRH |= (1ul << 2); //set CA_CLK | PD2 low
	GPIOD->BSRRL |= (1ul << 2); //set CA_CLK | PD2 high
	
	//enable cathode driver
	GPIOC->BSRRH |= (1ul << 1); //set CA_EN (PC1) low b/c active low
	
	//read switch lines (0: not-pressed, 1: pressed)
	int val=0xDEAD;
	val = (~(((GPIOA->IDR) & (1ul<<15))>>15)) & 1ul; //SW_ODD | PA15
	SWITCHES &= ~(1ul<<(sw_set-1)); //clear bit
	SWITCHES |= val<<(sw_set-1); //set bit
	
	val = (~(((GPIOC->IDR) & (1ul<<8))>>8)) & 1ul; //SW_EVEN | PC8
	SWITCHES &= ~(1ul<<(sw_set)); //clear bit
	SWITCHES |= val<<(sw_set); //set bit
	
	int sw=0xBAD;
	sw=SWITCHES;
	
	
}


/*----------------------------------------------------------------------------
  delays number of tick Systicks (happens every 1 ms)
 *----------------------------------------------------------------------------*/
void Delay (uint32_t dlyTicks) {                                              
  uint32_t curTicks;

//!!temporary -- replaced delay mediated by SysTick_Handeler() with software delay
//  curTicks = msTicks;
//  while ((msTicks - curTicks) < dlyTicks);
  curTicks = 0x12345;
  while(curTicks-- > 0);
  return;
}


/*----------------------------------------------------------------------------
  Function that initializes Button pins
 *----------------------------------------------------------------------------*/
void BTN_Init(void) {

  RCC->AHB1ENR  |= ((1UL <<  0) );              /* Enable GPIOA clock         */

  GPIOA->MODER    &= ~((3UL << 2*0)  );         /* PA.0 is input              */
  GPIOA->OSPEEDR  &= ~((3UL << 2*0)  );         /* PA.0 is 50MHz Fast Speed   */
  GPIOA->OSPEEDR  |=  ((2UL << 2*0)  ); 
  GPIOA->PUPDR    &= ~((3UL << 2*0)  );         /* PA.0 is no Pull up         */
}

/*----------------------------------------------------------------------------
  Function that read Button pins
 *----------------------------------------------------------------------------*/
uint32_t BTN_Get(void) {

 return (GPIOA->IDR & (1UL << 0));
}



/*----------------------------------------------------------------------------
  MyasmDelay function
 *----------------------------------------------------------------------------*/
void MyasmDelay(int);

/*----------------------------------------------------------------------------
  asmLED_ON function
 *----------------------------------------------------------------------------*/
void asmLED_ON(int);

/*----------------------------------------------------------------------------
  asmLED_OFF function
 *----------------------------------------------------------------------------*/
void asmLED_OFF(int);

/*----------------------------------------------------------------------------
  sub_uchar_from_quad_asm function & function wrapper
 *----------------------------------------------------------------------------*/
void sub_uchar_from_quad_asm(int *quad_dest_addr, int *quad_base_addr, char uchar_addr); 

void sub_uchar_from_quad_example() {
	unsigned int quad_dest[4];
  
  unsigned int quad_base[4] = {0x0, 0x0, 0x0, 0x4}; 	//test 1 - basic case
	unsigned char uchar = 0x1;
  sub_uchar_from_quad_asm(quad_dest, quad_base, uchar); 

	quad_base[0] = 0x0; //test 2 - propogation case
	quad_base[1] = 0x0;
	quad_base[2] = 0x3;
	quad_base[3] = 0x10;
	uchar = 0x20;
  sub_uchar_from_quad_asm(quad_dest, quad_base, uchar); 

	quad_base[0] = 0x80000000; //test 3 - overflow case
	quad_base[1] = 0x0;
	quad_base[2] = 0x0;
	quad_base[3] = 0x0;
	uchar = 0x01;
  sub_uchar_from_quad_asm(quad_dest, quad_base, uchar);
}


/*----------------------------------------------------------------------------
  test_update_mask32 function
 *----------------------------------------------------------------------------*/
void test_update_mask32();


/*----------------------------------------------------------------------------
  test_op function
 *----------------------------------------------------------------------------*/
void test_op();

/*----------------------------------------------------------------------------
  atoi function "19" -> 19 aka array to integer
 *----------------------------------------------------------------------------*/
int atoi(char* num_char);

/*----------------------------------------------------------------------------
  seg7_handler function - called from systick
 *----------------------------------------------------------------------------*/
int seg7_handler() {
	switch (SEG7_COUNTER) {
		case 1:
			seg7_update(1, SEG7_DIGIT1);
			SEG7_COUNTER++;
			break;
		case 2:
			seg7_update(2, SEG7_DIGIT2);
			SEG7_COUNTER++;
			break;
		case 3:
			seg7_update(3, SEG7_DIGIT3);
			SEG7_COUNTER++;
			break;
		case 4:
			seg7_update(4, SEG7_DIGIT4);
		  SEG7_COUNTER++;
			break;
		case 5:
			seg7_update(5, SEG7_COLON_DEGREE);
		  SEG7_COUNTER++;
			break;
		default:
			SEG7_COUNTER = 1;
			break;
	}
}

/*----------------------------------------------------------------------------
  seg7_update function - updates a single seg7 digit to write passed value
 *----------------------------------------------------------------------------*/
int seg7_update(int digit, int val) {
	//disable cathode driver
	GPIOC->BSRRL |= (1ul << 1); //set CA_EN (PC1) high b/c active low
	
	//set cathode lines
	switch(val) {
		case 0: //'0'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 1: //'1'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 2: //'2'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRL |= (1ul << 1); //set  CA_C (PA1) high
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 3: //'3'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 4: //'4'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 5: //'5'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 6: //'6'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 7: //'7'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 8: //'8'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 9: //'9'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;
		case 10: //OFF
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRL |= (1ul << 1); //set  CA_C (PA1) high
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 11: //':'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRL |= (1ul << 1); //set  CA_C (PA1) high
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 12: //'<degree>'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 13: //'<colon> and <degree>'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRH |= (1ul << 1); //set  CA_B (PB1) low
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRL |= (1ul << 4); //set  CA_G (PC4) high
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;		
		case 14: //'E'
			GPIOC->BSRRH |= (1ul << 5); //set  CA_A (PC5) low
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRL |= (1ul << 1); //set  CA_C (PA1) high
			GPIOB->BSRRH |= (1ul << 5); //set  CA_D (PB5) low
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;		
		case 15: //'h'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRH |= (1ul << 2); //set  CA_F (PC2) low
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;		
		case 16: //'m'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRH |= (1ul << 1); //set  CA_C (PA1) low
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRH |= (1ul << 11); //set  CA_E (PB11) low
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;	
		case 17: //'-'
			GPIOC->BSRRL |= (1ul << 5); //set  CA_A (PC5) high
			GPIOB->BSRRL |= (1ul << 1); //set  CA_B (PB1) high
			GPIOA->BSRRL |= (1ul << 1); //set  CA_C (PA1) high
			GPIOB->BSRRL |= (1ul << 5); //set  CA_D (PB5) high
			GPIOB->BSRRL |= (1ul << 11); //set  CA_E (PB11) high
			GPIOC->BSRRL |= (1ul << 2); //set  CA_F (PC2) high
			GPIOC->BSRRH |= (1ul << 4); //set  CA_G (PC4) low
			GPIOB->BSRRL |= (1ul << 0); //set  CA_DP (PB0) high
			break;		 
	}
	
	//clock cathode
	GPIOD->BSRRH |= (1ul << 2); //set CA_CLK (PD2) low
	GPIOD->BSRRL |= (1ul << 2); //set CA_CLK (PD2) high

	//disable anode driver
	GPIOB->BSRRL |= (1ul << 4); //set AN_EN (PB4) high b/c active low
	
	//set anode lines
	switch(digit) {
		case 1: //digit 1
			GPIOC->BSRRH |= (1ul << 2); //set DIGIT1 anode (PC2) low
			GPIOA->BSRRL |= (1ul << 1); //set DIGIT2 anode (PA1) high
			GPIOC->BSRRL |= (1ul << 4); //set DIGIT3 anode (PC4) high
			GPIOB->BSRRL |= (1ul << 1); //set DIGIT4 anode (PB1) high
			GPIOC->BSRRL |= (1ul << 5); //set COLON  anode (PC5) high
			GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
			GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
			break;
		case 2: //digit 2
			GPIOC->BSRRL |= (1ul << 2); //set DIGIT1 anode (PC2) high
			GPIOA->BSRRH |= (1ul << 1); //set DIGIT2 anode (PA1) low
			GPIOC->BSRRL |= (1ul << 4); //set DIGIT3 anode (PC4) high
			GPIOB->BSRRL |= (1ul << 1); //set DIGIT4 anode (PB1) high
			GPIOC->BSRRL |= (1ul << 5); //set COLON  anode (PC5) high
			GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
			GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
			break;
		case 3: //digit 3
			GPIOC->BSRRL |= (1ul << 2); //set DIGIT1 anode (PC2) high
			GPIOA->BSRRL |= (1ul << 1); //set DIGIT2 anode (PA1) high
			GPIOC->BSRRH |= (1ul << 4); //set DIGIT3 anode (PC4) low
			GPIOB->BSRRL |= (1ul << 1); //set DIGIT4 anode (PB1) high
			GPIOC->BSRRL |= (1ul << 5); //set COLON  anode (PC5) high
			GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
			GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
			break;
		case 4: //digit 4
			GPIOC->BSRRL |= (1ul << 2); //set DIGIT1 anode (PC2) high
			GPIOA->BSRRL |= (1ul << 1); //set DIGIT2 anode (PA1) high
			GPIOC->BSRRL |= (1ul << 4); //set DIGIT3 anode (PC4) high
			GPIOB->BSRRH |= (1ul << 1); //set DIGIT4 anode (PB1) low
			GPIOC->BSRRL |= (1ul << 5); //set COLON  anode (PC5) high
			GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
			GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
			break;
		case 5: //colon_degree
			GPIOC->BSRRL |= (1ul << 2); //set DIGIT1 anode (PC2) high
			GPIOA->BSRRL |= (1ul << 1); //set DIGIT2 anode (PA1) high
			GPIOC->BSRRL |= (1ul << 4); //set DIGIT3 anode (PC4) high
			GPIOB->BSRRL |= (1ul << 1); //set DIGIT4 anode (PB1) high
			GPIOC->BSRRH |= (1ul << 5); //set COLON  anode (PC5) low
			GPIOB->BSRRL |= (1ul << 0); //set  AN_G  anode (PB0) high
			GPIOB->BSRRL |= (1ul << 11); //set AN_R   anode (PB11) high	
			break;
}
	//clock anode driver
	GPIOC->BSRRH |= (1ul << 11); //set AN_CLK (PC11) low
	GPIOC->BSRRL |= (1ul << 11); //set AN_CLK (PC11) high

	//enable anode driver
	GPIOB->BSRRH |= (1ul << 4); //set AN_EN (PB4) low b/c active low
	
	//enable cathode driver
	GPIOC->BSRRH |= (1ul << 1); //set CA_EN (PC1) low b/c active low
}

/*----------------------------------------------------------------------------
  MAIN function
 *----------------------------------------------------------------------------*/

int main (void) {
	//test_op();
	//test_update_mask32();
	//char num_char[] = "-1234";
	//int num_int;
	
	//sub_uchar_from_quad_example();
	//num_int = atoi(num_char); //assum number between 0-9
	
  int32_t num = -1; 
  int32_t dir =  1;
  uint32_t btns = 0;
	
	
	//asmLDR_examples();
	//asmSTR_examples();
 
  SystemCoreClock = 168000000; 	//!!found in system_stm32f4xx.c, added here instead of as global
							   //becaus we're trying to avoid need to have crt0.o

 
 
  SystemCoreClockUpdate();                      /* Get Core Clock Frequency   */
  if (SysTick_Config(SystemCoreClock / 1000)) { /* SysTick 1 msec interrupts  */
    while (1);                                  /* Capture error              */
  }
	SEG7_Init();
	switch_init();
  LED_Init();
  BTN_Init();    	
  int toggle=0;
	
  while(1) {                                    // Loop forever 
	
		/*
		btns = BTN_Get();                           // Read button states       

    if (btns != (1UL << 0)) {
      // Calculate 'num': 0,1,...,LED_NUM-1,LED_NUM-1,...,1,0,0,...
      num += dir;
      if (num == LED_NUM) { dir = -1; num =  LED_NUM-1; } 
      else if   (num < 0) { dir =  1; num =  0;         }

			if (toggle==0) {  	//LED and Delay in Assembly
				asmLED_ON (num);
				MyasmDelay(50);
				asmLED_OFF(num);
				MyasmDelay(100);
				toggle=1;
			}
			else {							//LED and Delay in C
				LED_On (num);
				Delay(50);
				LED_Off(num);
				Delay(100);
				toggle=0;
			}
			
			
    }
    else {
      LED_Out (0x0F);
      Delay(10);                                // Delay 10ms
    }
	*/
  }
  
}

