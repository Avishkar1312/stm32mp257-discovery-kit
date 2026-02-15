################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/io.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/freertos/time.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos

