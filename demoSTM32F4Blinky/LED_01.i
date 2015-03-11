# 1 "LED_01.c"
# 1 "C:\\Users\\Jake\\Documents\\GitHub\\audiometer\\demoSTM32F4Blinky//"
# 1 "<command-line>"
# 1 "LED_01.c"
# 18 "LED_01.c"
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
# 19 "LED_01.c" 2







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
# 84 "LED_01.c"
# 1 "LED.h" 1
# 22 "LED.h"
extern void LED_Init(void);
extern void LED_On (unsigned int num);
extern void LED_Off (unsigned int num);
extern void LED_Out (unsigned int value);
# 85 "LED_01.c" 2

const unsigned long led_mask[] = {1UL << 12, 1UL << 13, 1UL << 14, 1UL << 15};




void LED_Init (void) {

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 3) );

  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->MODER &= ~((3UL << 2*12) |
                       (3UL << 2*13) |
                       (3UL << 2*14) |
                       (3UL << 2*15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->MODER |= ((1UL << 2*12) |
                       (1UL << 2*13) |
                       (1UL << 2*14) |
                       (1UL << 2*15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->OTYPER &= ~((1UL << 12) |
                       (1UL << 13) |
                       (1UL << 14) |
                       (1UL << 15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->OSPEEDR &= ~((3UL << 2*12) |
                       (3UL << 2*13) |
                       (3UL << 2*14) |
                       (3UL << 2*15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->OSPEEDR |= ((2UL << 2*12) |
                       (2UL << 2*13) |
                       (2UL << 2*14) |
                       (2UL << 2*15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->PUPDR &= ~((3UL << 2*12) |
                       (3UL << 2*13) |
                       (3UL << 2*14) |
                       (3UL << 2*15) );
  ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->PUPDR |= ((1UL << 2*12) |
                       (1UL << 2*13) |
                       (1UL << 2*14) |
                       (1UL << 2*15) );
}




void LED_On (unsigned int num) {

  if (num < 4) {
    ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->BSRRL = led_mask[num];
  }
}




void LED_Off (unsigned int num) {

  if (num < 4) {
    ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))->BSRRH = led_mask[num];
  }
}




void LED_Out(unsigned int value) {
  int i;

  for (i = 0; i < 4; i++) {
    if (value & (1<<i)) {
      LED_On (i);
    } else {
      LED_Off(i);
    }
  }
}
