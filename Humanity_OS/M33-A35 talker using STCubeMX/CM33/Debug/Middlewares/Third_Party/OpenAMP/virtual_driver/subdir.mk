################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.c \
../Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.c \
../Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.o \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.o \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.d \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.d \
./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/virtual_driver/%.o Middlewares/Third_Party/OpenAMP/virtual_driver/%.su Middlewares/Third_Party/OpenAMP/virtual_driver/%.cyclo: ../Middlewares/Third_Party/OpenAMP/virtual_driver/%.c Middlewares/Third_Party/OpenAMP/virtual_driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-virtual_driver

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-virtual_driver:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.cyclo ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.d ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.o ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_i2c.su ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.cyclo ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.d ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.o ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_intc.su ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.cyclo ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.d ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.o ./Middlewares/Third_Party/OpenAMP/virtual_driver/virt_uart.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-virtual_driver

