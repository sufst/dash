################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.c 

OBJS += \
./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.o 

C_DEPS += \
./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/draw/opengles/%.o Core/Src/lvgl/src/draw/opengles/%.su Core/Src/lvgl/src/draw/opengles/%.cyclo: ../Core/Src/lvgl/src/draw/opengles/%.c Core/Src/lvgl/src/draw/opengles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-opengles

clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-opengles:
	-$(RM) ./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.cyclo ./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.d ./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.o ./Core/Src/lvgl/src/draw/opengles/lv_draw_opengles.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-opengles

