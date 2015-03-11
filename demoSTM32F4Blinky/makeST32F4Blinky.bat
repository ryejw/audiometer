REM  makeSTM32F4Blinky.bat wmh 2013-02-26 : compile STM32F4DISCOVERY LED demo and .asm opcode demo 
REM !!optional -L and -l switches allow linking to Cortex M3 library functions for divide, etc. 
set path=.\;C:\yagarto\bin;

REM assemble with '-g' omitted where we want to hide things in the AXF
arm-none-eabi-as -g -mcpu=cortex-m4 -o aDemo.o CortexM4asmOps_01.asm
arm-none-eabi-as -g -mcpu=cortex-m4 -o aStartup.o SimpleStartSTM32F4_01.asm

REM compiling C
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps STM32F4main01.c -o cMain.o
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps LED_01.c -o cLED.o

REM linking
REM arm-none-eabi-gcc           -g -Wl,--gc-sections -Wl,-Map,Blinky.map -Wl,-T link.ld -oBlinky.elf aStartup.o  cMain.o  -L"C:\yagarto\arm-none-eabi\lib\thumb\v7m" -lgcc
REM  arm-none-eabi-gcc -nostartfiles -g -Wl,--gc-sections -Wl,-Map,Blinky.map -Wl,-T link.ld -oBlinky.elf aStartup.o  cMain.o  -L"C:\yagarto\arm-none-eabi\lib\thumb\v7m" -lgcc
REM 2013-02-25 : in the above changed --gc-sections to --no-gc-sections to kill garbage collection which wasn't letting us see unused code in the .lst file.
REM  arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T linkBlinkySTM32F4_01.ld -oBlinky.elf aStartup.o aDemo.o cLED.o cMain.o  -L"C:\yagarto\arm-none-eabi\lib\thumb\v7m" -lgcc
REM 2013-02-15: in the above removed ' -L"C:\yagarto\arm-none-eabi\lib\thumb\v7m" ' as that directories no longer exists but compiling went ahead anyway.  What is in that location is some crt(c startup) and a libgcc (functions for divide etc). 
 arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T linkBlinkySTM32F4_01.ld -oBlinky.elf aStartup.o aDemo.o cLED.o cMain.o -lgcc

REM hex file
arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
copy Blinky.elf Blinky.AXF
pause

REM list file
arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst
