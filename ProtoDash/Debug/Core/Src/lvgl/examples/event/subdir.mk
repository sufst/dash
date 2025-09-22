################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/examples/event/lv_example_event_bubble.c \
../Core/Src/lvgl/examples/event/lv_example_event_button.c \
../Core/Src/lvgl/examples/event/lv_example_event_click.c \
../Core/Src/lvgl/examples/event/lv_example_event_draw.c \
../Core/Src/lvgl/examples/event/lv_example_event_streak.c 

OBJS += \
./Core/Src/lvgl/examples/event/lv_example_event_bubble.o \
./Core/Src/lvgl/examples/event/lv_example_event_button.o \
./Core/Src/lvgl/examples/event/lv_example_event_click.o \
./Core/Src/lvgl/examples/event/lv_example_event_draw.o \
./Core/Src/lvgl/examples/event/lv_example_event_streak.o 

C_DEPS += \
./Core/Src/lvgl/examples/event/lv_example_event_bubble.d \
./Core/Src/lvgl/examples/event/lv_example_event_button.d \
./Core/Src/lvgl/examples/event/lv_example_event_click.d \
./Core/Src/lvgl/examples/event/lv_example_event_draw.d \
./Core/Src/lvgl/examples/event/lv_example_event_streak.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/examples/event/%.o Core/Src/lvgl/examples/event/%.su Core/Src/lvgl/examples/event/%.cyclo: ../Core/Src/lvgl/examples/event/%.c Core/Src/lvgl/examples/event/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-examples-2f-event

clean-Core-2f-Src-2f-lvgl-2f-examples-2f-event:
	-$(RM) ./Core/Src/lvgl/examples/event/lv_example_event_bubble.cyclo ./Core/Src/lvgl/examples/event/lv_example_event_bubble.d ./Core/Src/lvgl/examples/event/lv_example_event_bubble.o ./Core/Src/lvgl/examples/event/lv_example_event_bubble.su ./Core/Src/lvgl/examples/event/lv_example_event_button.cyclo ./Core/Src/lvgl/examples/event/lv_example_event_button.d ./Core/Src/lvgl/examples/event/lv_example_event_button.o ./Core/Src/lvgl/examples/event/lv_example_event_button.su ./Core/Src/lvgl/examples/event/lv_example_event_click.cyclo ./Core/Src/lvgl/examples/event/lv_example_event_click.d ./Core/Src/lvgl/examples/event/lv_example_event_click.o ./Core/Src/lvgl/examples/event/lv_example_event_click.su ./Core/Src/lvgl/examples/event/lv_example_event_draw.cyclo ./Core/Src/lvgl/examples/event/lv_example_event_draw.d ./Core/Src/lvgl/examples/event/lv_example_event_draw.o ./Core/Src/lvgl/examples/event/lv_example_event_draw.su ./Core/Src/lvgl/examples/event/lv_example_event_streak.cyclo ./Core/Src/lvgl/examples/event/lv_example_event_streak.d ./Core/Src/lvgl/examples/event/lv_example_event_streak.o ./Core/Src/lvgl/examples/event/lv_example_event_streak.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-examples-2f-event

