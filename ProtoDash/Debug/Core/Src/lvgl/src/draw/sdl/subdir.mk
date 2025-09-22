################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.c 

OBJS += \
./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.o 

C_DEPS += \
./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/draw/sdl/%.o Core/Src/lvgl/src/draw/sdl/%.su Core/Src/lvgl/src/draw/sdl/%.cyclo: ../Core/Src/lvgl/src/draw/sdl/%.c Core/Src/lvgl/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sdl

clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sdl:
	-$(RM) ./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.cyclo ./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.d ./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.o ./Core/Src/lvgl/src/draw/sdl/lv_draw_sdl.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sdl

