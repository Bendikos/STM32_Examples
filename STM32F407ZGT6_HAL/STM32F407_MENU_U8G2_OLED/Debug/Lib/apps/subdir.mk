################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/apps/adcchart.c \
../Lib/apps/base.c \
../Lib/apps/easingchart.c \
../Lib/apps/iconlist.c \
../Lib/apps/menulist.c \
../Lib/apps/textedit.c 

OBJS += \
./Lib/apps/adcchart.o \
./Lib/apps/base.o \
./Lib/apps/easingchart.o \
./Lib/apps/iconlist.o \
./Lib/apps/menulist.o \
./Lib/apps/textedit.o 

C_DEPS += \
./Lib/apps/adcchart.d \
./Lib/apps/base.d \
./Lib/apps/easingchart.d \
./Lib/apps/iconlist.d \
./Lib/apps/menulist.d \
./Lib/apps/textedit.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/apps/%.o Lib/apps/%.su Lib/apps/%.cyclo: ../Lib/apps/%.c Lib/apps/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/apps" -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/easing" -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/key" -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/oled" -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/res" -I"C:/Users/Administrator/Documents/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/u8g2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-apps

clean-Lib-2f-apps:
	-$(RM) ./Lib/apps/adcchart.cyclo ./Lib/apps/adcchart.d ./Lib/apps/adcchart.o ./Lib/apps/adcchart.su ./Lib/apps/base.cyclo ./Lib/apps/base.d ./Lib/apps/base.o ./Lib/apps/base.su ./Lib/apps/easingchart.cyclo ./Lib/apps/easingchart.d ./Lib/apps/easingchart.o ./Lib/apps/easingchart.su ./Lib/apps/iconlist.cyclo ./Lib/apps/iconlist.d ./Lib/apps/iconlist.o ./Lib/apps/iconlist.su ./Lib/apps/menulist.cyclo ./Lib/apps/menulist.d ./Lib/apps/menulist.o ./Lib/apps/menulist.su ./Lib/apps/textedit.cyclo ./Lib/apps/textedit.d ./Lib/apps/textedit.o ./Lib/apps/textedit.su

.PHONY: clean-Lib-2f-apps

