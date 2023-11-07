################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../oled/oled.c \
../oled/stm32_u8g2.c 

OBJS += \
./oled/oled.o \
./oled/stm32_u8g2.o 

C_DEPS += \
./oled/oled.d \
./oled/stm32_u8g2.d 


# Each subdirectory must supply rules for building sources it contributes
oled/%.o oled/%.su oled/%.cyclo: ../oled/%.c oled/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/apps" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/easing" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/key" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib/res" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/Lib" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/oled" -I"C:/Users/Administrator/STM32CubeIDE/workspace_1.13.2/STM32F407_MENU_U8G2_OLED/u8g2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-oled

clean-oled:
	-$(RM) ./oled/oled.cyclo ./oled/oled.d ./oled/oled.o ./oled/oled.su ./oled/stm32_u8g2.cyclo ./oled/stm32_u8g2.d ./oled/stm32_u8g2.o ./oled/stm32_u8g2.su

.PHONY: clean-oled

