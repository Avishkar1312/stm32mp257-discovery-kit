################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.c \
../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.o \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.d \
./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/%.o Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/%.su Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/%.cyclo: ../Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/%.c Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-examples-2f-system-2f-generic-2f-zynqmp_r5-2f-zynqmp_amp_demo

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-examples-2f-system-2f-generic-2f-zynqmp_r5-2f-zynqmp_amp_demo:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_latency_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/ipi_shmem_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/libmetal_amp_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_atomic_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_latency_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/shmem_throughput_demod.su ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.cyclo ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.d ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.o ./Middlewares/Third_Party/OpenAMP/libmetal/examples/system/generic/zynqmp_r5/zynqmp_amp_demo/sys_init.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-libmetal-2f-examples-2f-system-2f-generic-2f-zynqmp_r5-2f-zynqmp_amp_demo

