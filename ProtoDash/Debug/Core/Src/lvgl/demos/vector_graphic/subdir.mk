################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.c 

OBJS += \
./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.o 

C_DEPS += \
./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/demos/vector_graphic/%.o Core/Src/lvgl/demos/vector_graphic/%.su Core/Src/lvgl/demos/vector_graphic/%.cyclo: ../Core/Src/lvgl/demos/vector_graphic/%.c Core/Src/lvgl/demos/vector_graphic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-demos-2f-vector_graphic

clean-Core-2f-Src-2f-lvgl-2f-demos-2f-vector_graphic:
	-$(RM) ./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.cyclo ./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.d ./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.o ./Core/Src/lvgl/demos/vector_graphic/lv_demo_vector_graphic.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-demos-2f-vector_graphic

