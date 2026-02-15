################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.c \
../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.c 

OBJS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.o \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.o 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.d \
./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/%.o Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/%.su Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/%.cyclo: ../Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/%.c Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DVIRTIO_SLAVE_ONLY -Dhipcc1=hipcc -DCORE_CM33 -DUSE_HAL_DRIVER -DSTM32MP257Fxx -c -I../Core/Inc -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../Drivers/STM32MP2xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-tests-2f-msg

clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-tests-2f-msg:
	-$(RM) ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-flood-ping.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-echo.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-nocopy-ping.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-ping.su ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.cyclo ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.d ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.o ./Middlewares/Third_Party/OpenAMP/open-amp/apps/tests/msg/rpmsg-update.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-tests-2f-msg

