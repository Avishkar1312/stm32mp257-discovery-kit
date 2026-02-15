################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/%.o Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/%.su Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/%.c Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-generic

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-generic:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/alloc.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/atomic.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/main.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/generic/mutex.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-generic

