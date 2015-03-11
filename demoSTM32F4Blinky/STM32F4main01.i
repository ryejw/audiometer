# 1 "STM32F4main01.c"
# 1 "C:\\Users\\Jake\\Documents\\GitHub\\audiometer\\demoSTM32F4Blinky//"
# 1 "<command-line>"
# 1 "STM32F4main01.c"
# 18 "STM32F4main01.c"
 int Cint;



# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.7.2/include/stdint.h" 1 3 4


# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 1 3 4
# 41 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 97 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 243 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 4 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.7.2/include/stdint.h" 2 3 4
# 23 "STM32F4main01.c" 2






  uint32_t SystemCoreClock;






typedef struct
{
  uint32_t MODER;
  uint32_t OTYPER;
  uint32_t OSPEEDR;
  uint32_t PUPDR;
  uint32_t IDR;
  uint32_t ODR;
  uint16_t BSRRL;
  uint16_t BSRRH;
  uint32_t LCKR;
  uint32_t AFR[2];
} GPIO_TypeDef;



typedef struct
{
  uint32_t CR;
  uint32_t PLLCFGR;
  uint32_t CFGR;
  uint32_t CIR;
  uint32_t AHB1RSTR;
  uint32_t AHB2RSTR;
  uint32_t AHB3RSTR;
  uint32_t RESERVED0;
  uint32_t APB1RSTR;
  uint32_t APB2RSTR;
  uint32_t RESERVED1[2];
  uint32_t AHB1ENR;
  uint32_t AHB2ENR;
  uint32_t AHB3ENR;
  uint32_t RESERVED2;
  uint32_t APB1ENR;
  uint32_t APB2ENR;
  uint32_t RESERVED3[2];
  uint32_t AHB1LPENR;
  uint32_t AHB2LPENR;
  uint32_t AHB3LPENR;
  uint32_t RESERVED4;
  uint32_t APB1LPENR;
  uint32_t APB2LPENR;
  uint32_t RESERVED5[2];
  uint32_t BDCR;
  uint32_t CSR;
  uint32_t RESERVED6[2];
  uint32_t SSCGR;
  uint32_t PLLI2SCFGR;
} RCC_TypeDef;
# 101 "STM32F4main01.c"
typedef enum IRQn
{

  NonMaskableInt_IRQn = -14,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  WWDG_IRQn = 0,
  PVD_IRQn = 1,
  TAMP_STAMP_IRQn = 2,
  RTC_WKUP_IRQn = 3,
  FLASH_IRQn = 4,
  RCC_IRQn = 5,
  EXTI0_IRQn = 6,
  EXTI1_IRQn = 7,
  EXTI2_IRQn = 8,
  EXTI3_IRQn = 9,
  EXTI4_IRQn = 10,
  DMA1_Stream0_IRQn = 11,
  DMA1_Stream1_IRQn = 12,
  DMA1_Stream2_IRQn = 13,
  DMA1_Stream3_IRQn = 14,
  DMA1_Stream4_IRQn = 15,
  DMA1_Stream5_IRQn = 16,
  DMA1_Stream6_IRQn = 17,
  ADC_IRQn = 18,
  CAN1_TX_IRQn = 19,
  CAN1_RX0_IRQn = 20,
  CAN1_RX1_IRQn = 21,
  CAN1_SCE_IRQn = 22,
  EXTI9_5_IRQn = 23,
  TIM1_BRK_TIM9_IRQn = 24,
  TIM1_UP_TIM10_IRQn = 25,
  TIM1_TRG_COM_TIM11_IRQn = 26,
  TIM1_CC_IRQn = 27,
  TIM2_IRQn = 28,
  TIM3_IRQn = 29,
  TIM4_IRQn = 30,
  I2C1_EV_IRQn = 31,
  I2C1_ER_IRQn = 32,
  I2C2_EV_IRQn = 33,
  I2C2_ER_IRQn = 34,
  SPI1_IRQn = 35,
  SPI2_IRQn = 36,
  USART1_IRQn = 37,
  USART2_IRQn = 38,
  USART3_IRQn = 39,
  EXTI15_10_IRQn = 40,
  RTC_Alarm_IRQn = 41,
  OTG_FS_WKUP_IRQn = 42,
  TIM8_BRK_TIM12_IRQn = 43,
  TIM8_UP_TIM13_IRQn = 44,
  TIM8_TRG_COM_TIM14_IRQn = 45,
  TIM8_CC_IRQn = 46,
  DMA1_Stream7_IRQn = 47,
  FSMC_IRQn = 48,
  SDIO_IRQn = 49,
  TIM5_IRQn = 50,
  SPI3_IRQn = 51,
  UART4_IRQn = 52,
  UART5_IRQn = 53,
  TIM6_DAC_IRQn = 54,
  TIM7_IRQn = 55,
  DMA2_Stream0_IRQn = 56,
  DMA2_Stream1_IRQn = 57,
  DMA2_Stream2_IRQn = 58,
  DMA2_Stream3_IRQn = 59,
  DMA2_Stream4_IRQn = 60,
  ETH_IRQn = 61,
  ETH_WKUP_IRQn = 62,
  CAN2_TX_IRQn = 63,
  CAN2_RX0_IRQn = 64,
  CAN2_RX1_IRQn = 65,
  CAN2_SCE_IRQn = 66,
  OTG_FS_IRQn = 67,
  DMA2_Stream5_IRQn = 68,
  DMA2_Stream6_IRQn = 69,
  DMA2_Stream7_IRQn = 70,
  USART6_IRQn = 71,
  I2C3_EV_IRQn = 72,
  I2C3_ER_IRQn = 73,
  OTG_HS_EP1_OUT_IRQn = 74,
  OTG_HS_EP1_IN_IRQn = 75,
  OTG_HS_WKUP_IRQn = 76,
  OTG_HS_IRQn = 77,
  DCMI_IRQn = 78,
  CRYP_IRQn = 79,
  HASH_RNG_IRQn = 80,
  FPU_IRQn = 81
} IRQn_Type;




# 1 "LED.h" 1
# 22 "LED.h"
extern void LED_Init(void);
extern void LED_On (unsigned int num);
extern void LED_Off (unsigned int num);
extern void LED_Out (unsigned int value);
# 201 "STM32F4main01.c" 2




typedef struct
{
  uint32_t CTRL;
  uint32_t LOAD;
  uint32_t VAL;
  uint32_t CALIB;
} SysTick_Type;





typedef struct
{
  uint32_t ISER[8];
       uint32_t RESERVED0[24];
  uint32_t ICER[8];
       uint32_t RSERVED1[24];
  uint32_t ISPR[8];
       uint32_t RESERVED2[24];
  uint32_t ICPR[8];
       uint32_t RESERVED3[24];
  uint32_t IABR[8];
       uint32_t RESERVED4[56];
  uint8_t IP[240];
       uint32_t RESERVED5[644];
  uint32_t STIR;
} NVIC_Type;





typedef struct
{
  uint32_t CPUID;
  uint32_t ICSR;
  uint32_t VTOR;
  uint32_t AIRCR;
  uint32_t SCR;
  uint32_t CCR;
  uint8_t SHP[12];
  uint32_t SHCSR;
  uint32_t CFSR;
  uint32_t HFSR;
  uint32_t DFSR;
  uint32_t MMFAR;
  uint32_t BFAR;
  uint32_t AFSR;
  uint32_t PFR[2];
  uint32_t DFR;
  uint32_t ADR;
  uint32_t MMFR[4];
  uint32_t ISAR[5];
       uint32_t RESERVED0[5];
  uint32_t CPACR;
} SCB_Type;
# 301 "STM32F4main01.c"
void SystemCoreClockUpdate(void)
{
  uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;


  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR & ((uint32_t)0x0000000C);

  switch (tmp)
  {
    case 0x00:
      SystemCoreClock = ((uint32_t)16000000);
      break;
    case 0x04:
      SystemCoreClock = ((uint32_t)25000000);
      break;
    case 0x08:




      pllsource = (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00400000)) >> 22;
      pllm = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x0000003F);

      if (pllsource != 0)
      {

        pllvco = (((uint32_t)25000000) / pllm) * ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00007FC0)) >> 6);
      }
      else
      {

        pllvco = (((uint32_t)16000000) / pllm) * ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00007FC0)) >> 6);
      }

      pllp = (((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00030000)) >>16) + 1 ) *2;
      SystemCoreClock = pllvco/pllp;
      break;
    default:
      SystemCoreClock = ((uint32_t)16000000);
      break;
  }
}



static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff); }
}


static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0)) return (1);

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = ticks - 1;
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) |
                   (1UL << 1) |
                   (1UL << 0);
  return (0);
}

volatile uint32_t msTicks;



void SysTick_Handler(void) {
  msTicks++;
}




void Delay (uint32_t dlyTicks) {
  uint32_t curTicks;




  curTicks = 0x12345;
  while(curTicks-- > 0);
  return;
}





void BTN_Init(void) {

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 0) );

  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->MODER &= ~((3UL << 2*0) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->OSPEEDR &= ~((3UL << 2*0) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->OSPEEDR |= ((2UL << 2*0) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->PUPDR &= ~((3UL << 2*0) );
}




uint32_t BTN_Get(void) {

 return (((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->IDR & (1UL << 0));
}




int main (void) {
  int32_t num = -1;
  int32_t dir = 1;
 uint32_t btns = 0;

  SystemCoreClock = 168000000;




  SystemCoreClockUpdate();
  if (SysTick_Config(SystemCoreClock / 1000)) {
    while (1);
  }

  LED_Init();
  BTN_Init();

  while(1) {
    btns = BTN_Get();

    if (btns != (1UL << 0)) {

      num += dir;
      if (num == 4) { dir = -1; num = 4 -1; }
      else if (num < 0) { dir = 1; num = 0; }

      LED_On (num);
      Delay(50);

      Delay(200);
    }
    else {
      LED_Out (0x0F);
      Delay(10);
    }

  }

}
