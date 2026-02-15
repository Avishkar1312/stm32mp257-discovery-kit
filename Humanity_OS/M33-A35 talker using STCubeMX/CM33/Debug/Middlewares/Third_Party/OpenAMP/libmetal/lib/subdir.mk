################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/io.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/log.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/version.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/dma.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/io.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/log.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/softirq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/version.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib

