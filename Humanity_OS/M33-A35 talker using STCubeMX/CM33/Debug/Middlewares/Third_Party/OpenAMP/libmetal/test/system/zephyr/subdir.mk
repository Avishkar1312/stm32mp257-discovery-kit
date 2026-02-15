################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.c \
../Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.o \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.d \
./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/%.o Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/%.su Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/%.c Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-zephyr

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-zephyr:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/alloc.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/atomic.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/main.su ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.d ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.o ./Middlewares/Third_Party/OpenAMP/libmetal/test/system/zephyr/mutex.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-zephyr

