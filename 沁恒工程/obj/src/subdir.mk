################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/CST816S.c \
../src/CTIIC.c \
../src/Main.c \
../src/app_i2c.c \
../src/key.c \
../src/lcd.c \
../src/lcd_init.c \
../src/pic.c \
../src/user.c 

C_DEPS += \
./src/CST816S.d \
./src/CTIIC.d \
./src/Main.d \
./src/app_i2c.d \
./src/key.d \
./src/lcd.d \
./src/lcd_init.d \
./src/pic.d \
./src/user.d 

OBJS += \
./src/CST816S.o \
./src/CTIIC.o \
./src/Main.o \
./src/app_i2c.o \
./src/key.o \
./src/lcd.o \
./src/lcd_init.o \
./src/pic.o \
./src/user.o 



# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\CH582M\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\CH582M\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/CH582M/src/include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
