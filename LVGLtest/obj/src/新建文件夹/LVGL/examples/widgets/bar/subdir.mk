################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_1.c \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_2.c \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_3.c \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_4.c \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_5.c \
../src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_6.c 

C_DEPS += \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_1.d \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_2.d \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_3.d \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_4.d \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_5.d \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_6.d 

OBJS += \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_1.o \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_2.o \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_3.o \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_4.o \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_5.o \
./src/�½��ļ���/LVGL/examples/widgets/bar/lv_example_bar_6.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/examples/widgets/bar/%.o: ../src/�½��ļ���/LVGL/examples/widgets/bar/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
