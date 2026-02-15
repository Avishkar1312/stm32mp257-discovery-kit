################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-generic

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-generic:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/io.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-generic

