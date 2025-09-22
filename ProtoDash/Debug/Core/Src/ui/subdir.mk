################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/ui/images.c \
../Core/Src/ui/screens.c \
../Core/Src/ui/styles.c \
../Core/Src/ui/ui.c \
../Core/Src/ui/ui_image_background.c 

OBJS += \
./Core/Src/ui/images.o \
./Core/Src/ui/screens.o \
./Core/Src/ui/styles.o \
./Core/Src/ui/ui.o \
./Core/Src/ui/ui_image_background.o 

C_DEPS += \
./Core/Src/ui/images.d \
./Core/Src/ui/screens.d \
./Core/Src/ui/styles.d \
./Core/Src/ui/ui.d \
./Core/Src/ui/ui_image_background.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/ui/%.o Core/Src/ui/%.su Core/Src/ui/%.cyclo: ../Core/Src/ui/%.c Core/Src/ui/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DLV_LVGL_H_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Core/Inc/Display -I../Core/Src/lvgl -I../Core/Src/ui -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-ui

clean-Core-2f-Src-2f-ui:
	-$(RM) ./Core/Src/ui/images.cyclo ./Core/Src/ui/images.d ./Core/Src/ui/images.o ./Core/Src/ui/images.su ./Core/Src/ui/screens.cyclo ./Core/Src/ui/screens.d ./Core/Src/ui/screens.o ./Core/Src/ui/screens.su ./Core/Src/ui/styles.cyclo ./Core/Src/ui/styles.d ./Core/Src/ui/styles.o ./Core/Src/ui/styles.su ./Core/Src/ui/ui.cyclo ./Core/Src/ui/ui.d ./Core/Src/ui/ui.o ./Core/Src/ui/ui.su ./Core/Src/ui/ui_image_background.cyclo ./Core/Src/ui/ui_image_background.d ./Core/Src/ui/ui_image_background.o ./Core/Src/ui/ui_image_background.su

.PHONY: clean-Core-2f-Src-2f-ui

