################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/examples/widgets/spinbox/lv_example_spinbox_1.c 

C_DEPS += \
./src/�½��ļ���/LVGL/examples/widgets/spinbox/lv_example_spinbox_1.d 

OBJS += \
./src/�½��ļ���/LVGL/examples/widgets/spinbox/lv_example_spinbox_1.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/examples/widgets/spinbox/%.o: ../src/�½��ļ���/LVGL/examples/widgets/spinbox/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
