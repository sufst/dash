################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Core/Src/lvgl/src/draw/sw/blend/helium/lv_blend_helium.S 

OBJS += \
./Core/Src/lvgl/src/draw/sw/blend/helium/lv_blend_helium.o 

S_UPPER_DEPS += \
./Core/Src/lvgl/src/draw/sw/blend/helium/lv_blend_helium.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/draw/sw/blend/helium/%.o: ../Core/Src/lvgl/src/draw/sw/blend/helium/%.S Core/Src/lvgl/src/draw/sw/blend/helium/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium

clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium:
	-$(RM) ./Core/Src/lvgl/src/draw/sw/blend/helium/lv_blend_helium.d ./Core/Src/lvgl/src/draw/sw/blend/helium/lv_blend_helium.o

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium

