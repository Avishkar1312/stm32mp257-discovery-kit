################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/%.o Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/%.su Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/%.cyclo: ../Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/%.c Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-linux-2f-machine-2f-generic

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-linux-2f-machine-2f-generic:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/helper.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/platform_info.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/system/linux/machine/generic/rsc_table.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-linux-2f-machine-2f-generic

