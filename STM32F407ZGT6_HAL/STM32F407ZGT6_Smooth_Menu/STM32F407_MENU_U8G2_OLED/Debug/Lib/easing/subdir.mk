################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/easing/easing.c 

OBJS += \
./Lib/easing/easing.o 

C_DEPS += \
./Lib/easing/easing.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/easing/%.o Lib/easing/%.su Lib/easing/%.cyclo: ../Lib/easing/%.c Lib/easing/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/apps" -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/easing" -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/key" -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/oled" -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/res" -I"C:/Users/Administrator/Desktop/Smooth_Menu/STM32F407ZGT6_HAL/STM32F407_MENU_U8G2_OLED/Lib/u8g2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-easing

clean-Lib-2f-easing:
	-$(RM) ./Lib/easing/easing.cyclo ./Lib/easing/easing.d ./Lib/easing/easing.o ./Lib/easing/easing.su

.PHONY: clean-Lib-2f-easing

