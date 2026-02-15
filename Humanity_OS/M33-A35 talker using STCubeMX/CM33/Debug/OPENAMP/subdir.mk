################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../OPENAMP/mbox_ipcc.c \
../OPENAMP/open_amp.c \
../OPENAMP/openamp_log.c \
../OPENAMP/rsc_table.c 

OBJS += \
./OPENAMP/mbox_ipcc.o \
./OPENAMP/open_amp.o \
./OPENAMP/openamp_log.o \
./OPENAMP/rsc_table.o 

C_DEPS += \
./OPENAMP/mbox_ipcc.d \
./OPENAMP/open_amp.d \
./OPENAMP/openamp_log.d \
./OPENAMP/rsc_table.d 


# Each subdirectory must supply rules for building sources it contributes
OPENAMP/%.o OPENAMP/%.su OPENAMP/%.cyclo: ../OPENAMP/%.c OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-OPENAMP

clean-OPENAMP:
	-$(RM) ./OPENAMP/mbox_ipcc.cyclo ./OPENAMP/mbox_ipcc.d ./OPENAMP/mbox_ipcc.o ./OPENAMP/mbox_ipcc.su ./OPENAMP/open_amp.cyclo ./OPENAMP/open_amp.d ./OPENAMP/open_amp.o ./OPENAMP/open_amp.su ./OPENAMP/openamp_log.cyclo ./OPENAMP/openamp_log.d ./OPENAMP/openamp_log.o ./OPENAMP/openamp_log.su ./OPENAMP/rsc_table.cyclo ./OPENAMP/rsc_table.d ./OPENAMP/rsc_table.o ./OPENAMP/rsc_table.su

.PHONY: clean-OPENAMP

