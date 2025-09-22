################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/draw/nema_gfx/%.o Core/Src/lvgl/src/draw/nema_gfx/%.su Core/Src/lvgl/src/draw/nema_gfx/%.cyclo: ../Core/Src/lvgl/src/draw/nema_gfx/%.c Core/Src/lvgl/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o ./Core/Src/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

