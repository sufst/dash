################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.c \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.c \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.c \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.c \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.c \
../Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.c 

OBJS += \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.o \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.o \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.o 

C_DEPS += \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.d \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.d \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d \
./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/drivers/uefi/%.o Core/Src/lvgl/src/drivers/uefi/%.su Core/Src/lvgl/src/drivers/uefi/%.cyclo: ../Core/Src/lvgl/src/drivers/uefi/%.c Core/Src/lvgl/src/drivers/uefi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-uefi

clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-uefi:
	-$(RM) ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_context.su ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_display.su ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.su ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.su ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_indev_touch.su ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.cyclo ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.d ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.o ./Core/Src/lvgl/src/drivers/uefi/lv_uefi_private.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-uefi

