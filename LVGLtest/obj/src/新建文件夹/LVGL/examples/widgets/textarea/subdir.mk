################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_1.c \
../src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_2.c \
../src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_3.c 

C_DEPS += \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_1.d \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_2.d \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_3.d 

OBJS += \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_1.o \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_2.o \
./src/�½��ļ���/LVGL/examples/widgets/textarea/lv_example_textarea_3.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/examples/widgets/textarea/%.o: ../src/�½��ļ���/LVGL/examples/widgets/textarea/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
