################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/%.o Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/%.su Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/%.c Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/alloc.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/atomic.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/condition.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/main.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/mutex.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/shmem.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/spinlock.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/linux/threads.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux

