################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/io.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/nuttx/time.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx

