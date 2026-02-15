################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-linux

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-linux:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/time.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/linux/utilities.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-linux

