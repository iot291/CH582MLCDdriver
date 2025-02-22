################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/t/user.c 

C_DEPS += \
./src/t/user.d 

OBJS += \
./src/t/user.o 



# Each subdirectory must supply rules for building sources it contributes
src/t/%.o: ../src/t/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\mounriver-studio-projects\CH582M\StdPeriphDriver\inc" -I"c:\Users\ql\mounriver-studio-projects\CH582M\RVMSIS" -I"c:/Users/ql/mounriver-studio-projects/CH582M/src/include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
