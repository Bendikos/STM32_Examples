################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../csrc/mui.c \
../csrc/mui_u8g2.c \
../csrc/u8g2_bitmap.c \
../csrc/u8g2_box.c \
../csrc/u8g2_buffer.c \
../csrc/u8g2_button.c \
../csrc/u8g2_circle.c \
../csrc/u8g2_cleardisplay.c \
../csrc/u8g2_d_memory.c \
../csrc/u8g2_d_setup.c \
../csrc/u8g2_font.c \
../csrc/u8g2_fonts.c \
../csrc/u8g2_hvline.c \
../csrc/u8g2_input_value.c \
../csrc/u8g2_intersection.c \
../csrc/u8g2_kerning.c \
../csrc/u8g2_line.c \
../csrc/u8g2_ll_hvline.c \
../csrc/u8g2_message.c \
../csrc/u8g2_polygon.c \
../csrc/u8g2_selection_list.c \
../csrc/u8g2_setup.c \
../csrc/u8log.c \
../csrc/u8log_u8g2.c \
../csrc/u8log_u8x8.c \
../csrc/u8x8_8x8.c \
../csrc/u8x8_byte.c \
../csrc/u8x8_cad.c \
../csrc/u8x8_capture.c \
../csrc/u8x8_d_ssd1306_128x64_noname.c \
../csrc/u8x8_debounce.c \
../csrc/u8x8_display.c \
../csrc/u8x8_fonts.c \
../csrc/u8x8_gpio.c \
../csrc/u8x8_input_value.c \
../csrc/u8x8_message.c \
../csrc/u8x8_selection_list.c \
../csrc/u8x8_setup.c \
../csrc/u8x8_string.c \
../csrc/u8x8_u16toa.c \
../csrc/u8x8_u8toa.c 

OBJS += \
./csrc/mui.o \
./csrc/mui_u8g2.o \
./csrc/u8g2_bitmap.o \
./csrc/u8g2_box.o \
./csrc/u8g2_buffer.o \
./csrc/u8g2_button.o \
./csrc/u8g2_circle.o \
./csrc/u8g2_cleardisplay.o \
./csrc/u8g2_d_memory.o \
./csrc/u8g2_d_setup.o \
./csrc/u8g2_font.o \
./csrc/u8g2_fonts.o \
./csrc/u8g2_hvline.o \
./csrc/u8g2_input_value.o \
./csrc/u8g2_intersection.o \
./csrc/u8g2_kerning.o \
./csrc/u8g2_line.o \
./csrc/u8g2_ll_hvline.o \
./csrc/u8g2_message.o \
./csrc/u8g2_polygon.o \
./csrc/u8g2_selection_list.o \
./csrc/u8g2_setup.o \
./csrc/u8log.o \
./csrc/u8log_u8g2.o \
./csrc/u8log_u8x8.o \
./csrc/u8x8_8x8.o \
./csrc/u8x8_byte.o \
./csrc/u8x8_cad.o \
./csrc/u8x8_capture.o \
./csrc/u8x8_d_ssd1306_128x64_noname.o \
./csrc/u8x8_debounce.o \
./csrc/u8x8_display.o \
./csrc/u8x8_fonts.o \
./csrc/u8x8_gpio.o \
./csrc/u8x8_input_value.o \
./csrc/u8x8_message.o \
./csrc/u8x8_selection_list.o \
./csrc/u8x8_setup.o \
./csrc/u8x8_string.o \
./csrc/u8x8_u16toa.o \
./csrc/u8x8_u8toa.o 

C_DEPS += \
./csrc/mui.d \
./csrc/mui_u8g2.d \
./csrc/u8g2_bitmap.d \
./csrc/u8g2_box.d \
./csrc/u8g2_buffer.d \
./csrc/u8g2_button.d \
./csrc/u8g2_circle.d \
./csrc/u8g2_cleardisplay.d \
./csrc/u8g2_d_memory.d \
./csrc/u8g2_d_setup.d \
./csrc/u8g2_font.d \
./csrc/u8g2_fonts.d \
./csrc/u8g2_hvline.d \
./csrc/u8g2_input_value.d \
./csrc/u8g2_intersection.d \
./csrc/u8g2_kerning.d \
./csrc/u8g2_line.d \
./csrc/u8g2_ll_hvline.d \
./csrc/u8g2_message.d \
./csrc/u8g2_polygon.d \
./csrc/u8g2_selection_list.d \
./csrc/u8g2_setup.d \
./csrc/u8log.d \
./csrc/u8log_u8g2.d \
./csrc/u8log_u8x8.d \
./csrc/u8x8_8x8.d \
./csrc/u8x8_byte.d \
./csrc/u8x8_cad.d \
./csrc/u8x8_capture.d \
./csrc/u8x8_d_ssd1306_128x64_noname.d \
./csrc/u8x8_debounce.d \
./csrc/u8x8_display.d \
./csrc/u8x8_fonts.d \
./csrc/u8x8_gpio.d \
./csrc/u8x8_input_value.d \
./csrc/u8x8_message.d \
./csrc/u8x8_selection_list.d \
./csrc/u8x8_setup.d \
./csrc/u8x8_string.d \
./csrc/u8x8_u16toa.d \
./csrc/u8x8_u8toa.d 


# Each subdirectory must supply rules for building sources it contributes
csrc/%.o csrc/%.su csrc/%.cyclo: ../csrc/%.c csrc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Administrator/Desktop/STM32F103_U8G2_OLED/csrc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-csrc

clean-csrc:
	-$(RM) ./csrc/mui.cyclo ./csrc/mui.d ./csrc/mui.o ./csrc/mui.su ./csrc/mui_u8g2.cyclo ./csrc/mui_u8g2.d ./csrc/mui_u8g2.o ./csrc/mui_u8g2.su ./csrc/u8g2_bitmap.cyclo ./csrc/u8g2_bitmap.d ./csrc/u8g2_bitmap.o ./csrc/u8g2_bitmap.su ./csrc/u8g2_box.cyclo ./csrc/u8g2_box.d ./csrc/u8g2_box.o ./csrc/u8g2_box.su ./csrc/u8g2_buffer.cyclo ./csrc/u8g2_buffer.d ./csrc/u8g2_buffer.o ./csrc/u8g2_buffer.su ./csrc/u8g2_button.cyclo ./csrc/u8g2_button.d ./csrc/u8g2_button.o ./csrc/u8g2_button.su ./csrc/u8g2_circle.cyclo ./csrc/u8g2_circle.d ./csrc/u8g2_circle.o ./csrc/u8g2_circle.su ./csrc/u8g2_cleardisplay.cyclo ./csrc/u8g2_cleardisplay.d ./csrc/u8g2_cleardisplay.o ./csrc/u8g2_cleardisplay.su ./csrc/u8g2_d_memory.cyclo ./csrc/u8g2_d_memory.d ./csrc/u8g2_d_memory.o ./csrc/u8g2_d_memory.su ./csrc/u8g2_d_setup.cyclo ./csrc/u8g2_d_setup.d ./csrc/u8g2_d_setup.o ./csrc/u8g2_d_setup.su ./csrc/u8g2_font.cyclo ./csrc/u8g2_font.d ./csrc/u8g2_font.o ./csrc/u8g2_font.su ./csrc/u8g2_fonts.cyclo ./csrc/u8g2_fonts.d ./csrc/u8g2_fonts.o ./csrc/u8g2_fonts.su ./csrc/u8g2_hvline.cyclo ./csrc/u8g2_hvline.d ./csrc/u8g2_hvline.o ./csrc/u8g2_hvline.su ./csrc/u8g2_input_value.cyclo ./csrc/u8g2_input_value.d ./csrc/u8g2_input_value.o ./csrc/u8g2_input_value.su ./csrc/u8g2_intersection.cyclo ./csrc/u8g2_intersection.d ./csrc/u8g2_intersection.o ./csrc/u8g2_intersection.su ./csrc/u8g2_kerning.cyclo ./csrc/u8g2_kerning.d ./csrc/u8g2_kerning.o ./csrc/u8g2_kerning.su ./csrc/u8g2_line.cyclo ./csrc/u8g2_line.d ./csrc/u8g2_line.o ./csrc/u8g2_line.su ./csrc/u8g2_ll_hvline.cyclo ./csrc/u8g2_ll_hvline.d ./csrc/u8g2_ll_hvline.o ./csrc/u8g2_ll_hvline.su ./csrc/u8g2_message.cyclo ./csrc/u8g2_message.d ./csrc/u8g2_message.o ./csrc/u8g2_message.su ./csrc/u8g2_polygon.cyclo ./csrc/u8g2_polygon.d ./csrc/u8g2_polygon.o ./csrc/u8g2_polygon.su ./csrc/u8g2_selection_list.cyclo ./csrc/u8g2_selection_list.d ./csrc/u8g2_selection_list.o ./csrc/u8g2_selection_list.su ./csrc/u8g2_setup.cyclo ./csrc/u8g2_setup.d ./csrc/u8g2_setup.o ./csrc/u8g2_setup.su ./csrc/u8log.cyclo ./csrc/u8log.d ./csrc/u8log.o ./csrc/u8log.su ./csrc/u8log_u8g2.cyclo ./csrc/u8log_u8g2.d ./csrc/u8log_u8g2.o ./csrc/u8log_u8g2.su ./csrc/u8log_u8x8.cyclo ./csrc/u8log_u8x8.d ./csrc/u8log_u8x8.o ./csrc/u8log_u8x8.su ./csrc/u8x8_8x8.cyclo ./csrc/u8x8_8x8.d ./csrc/u8x8_8x8.o ./csrc/u8x8_8x8.su ./csrc/u8x8_byte.cyclo ./csrc/u8x8_byte.d ./csrc/u8x8_byte.o ./csrc/u8x8_byte.su ./csrc/u8x8_cad.cyclo ./csrc/u8x8_cad.d ./csrc/u8x8_cad.o ./csrc/u8x8_cad.su ./csrc/u8x8_capture.cyclo ./csrc/u8x8_capture.d ./csrc/u8x8_capture.o ./csrc/u8x8_capture.su ./csrc/u8x8_d_ssd1306_128x64_noname.cyclo ./csrc/u8x8_d_ssd1306_128x64_noname.d ./csrc/u8x8_d_ssd1306_128x64_noname.o ./csrc/u8x8_d_ssd1306_128x64_noname.su ./csrc/u8x8_debounce.cyclo ./csrc/u8x8_debounce.d ./csrc/u8x8_debounce.o ./csrc/u8x8_debounce.su ./csrc/u8x8_display.cyclo ./csrc/u8x8_display.d ./csrc/u8x8_display.o ./csrc/u8x8_display.su ./csrc/u8x8_fonts.cyclo ./csrc/u8x8_fonts.d ./csrc/u8x8_fonts.o ./csrc/u8x8_fonts.su ./csrc/u8x8_gpio.cyclo ./csrc/u8x8_gpio.d ./csrc/u8x8_gpio.o ./csrc/u8x8_gpio.su ./csrc/u8x8_input_value.cyclo ./csrc/u8x8_input_value.d ./csrc/u8x8_input_value.o ./csrc/u8x8_input_value.su ./csrc/u8x8_message.cyclo ./csrc/u8x8_message.d ./csrc/u8x8_message.o ./csrc/u8x8_message.su ./csrc/u8x8_selection_list.cyclo ./csrc/u8x8_selection_list.d ./csrc/u8x8_selection_list.o ./csrc/u8x8_selection_list.su ./csrc/u8x8_setup.cyclo ./csrc/u8x8_setup.d ./csrc/u8x8_setup.o ./csrc/u8x8_setup.su ./csrc/u8x8_string.cyclo ./csrc/u8x8_string.d ./csrc/u8x8_string.o ./csrc/u8x8_string.su ./csrc/u8x8_u16toa.cyclo ./csrc/u8x8_u16toa.d ./csrc/u8x8_u16toa.o ./csrc/u8x8_u16toa.su ./csrc/u8x8_u8toa.cyclo ./csrc/u8x8_u8toa.d ./csrc/u8x8_u8toa.o ./csrc/u8x8_u8toa.su

.PHONY: clean-csrc

