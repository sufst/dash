################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.c \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.c \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.c \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.c \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.c \
../Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.c 

OBJS += \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.o \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.o \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.o \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.o \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.o \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.o 

C_DEPS += \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.d \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.d \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.d \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.d \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.d \
./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/examples/layouts/flex/%.o Core/Src/lvgl/examples/layouts/flex/%.su Core/Src/lvgl/examples/layouts/flex/%.cyclo: ../Core/Src/lvgl/examples/layouts/flex/%.c Core/Src/lvgl/examples/layouts/flex/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-examples-2f-layouts-2f-flex

clean-Core-2f-Src-2f-lvgl-2f-examples-2f-layouts-2f-flex:
	-$(RM) ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_1.su ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_2.su ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_3.su ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_4.su ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_5.su ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.cyclo ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.d ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.o ./Core/Src/lvgl/examples/layouts/flex/lv_example_flex_6.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-examples-2f-layouts-2f-flex

