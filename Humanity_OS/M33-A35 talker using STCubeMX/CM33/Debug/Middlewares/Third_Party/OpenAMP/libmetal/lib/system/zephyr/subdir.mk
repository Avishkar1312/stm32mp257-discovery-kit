################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.c \
../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.o \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.d \
./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/%.o Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/%.su Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/%.c Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-zephyr

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-zephyr:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/alloc.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/device.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/init.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/log.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/sys.su ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.d ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.o ./Middlewares/Third_Party/OpenAMP/libmetal/lib/system/zephyr/time.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-zephyr

