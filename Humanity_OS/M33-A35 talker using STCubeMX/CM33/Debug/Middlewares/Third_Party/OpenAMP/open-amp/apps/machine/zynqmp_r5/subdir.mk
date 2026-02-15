################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/%.o Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/%.su Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/%.cyclo: ../Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/%.c Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-machine-2f-zynqmp_r5

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-machine-2f-zynqmp_r5:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/platform_info.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/rsc_table.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/machine/zynqmp_r5/zynqmp_r5_a53_rproc.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-machine-2f-zynqmp_r5

