################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/%.o Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/%.su Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/%.c Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/alloc.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/atomic.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/irq.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/main.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/mutex.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/sleep.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/freertos/threads.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos

