################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/examples/assets/animimg001.c \
../src/�½��ļ���/LVGL/examples/assets/animimg002.c \
../src/�½��ļ���/LVGL/examples/assets/animimg003.c \
../src/�½��ļ���/LVGL/examples/assets/img_caret_down.c \
../src/�½��ļ���/LVGL/examples/assets/img_cogwheel_alpha16.c \
../src/�½��ļ���/LVGL/examples/assets/img_cogwheel_argb.c \
../src/�½��ļ���/LVGL/examples/assets/img_cogwheel_chroma_keyed.c \
../src/�½��ļ���/LVGL/examples/assets/img_cogwheel_indexed16.c \
../src/�½��ļ���/LVGL/examples/assets/img_cogwheel_rgb.c \
../src/�½��ļ���/LVGL/examples/assets/img_hand.c \
../src/�½��ļ���/LVGL/examples/assets/img_skew_strip.c \
../src/�½��ļ���/LVGL/examples/assets/img_star.c \
../src/�½��ļ���/LVGL/examples/assets/imgbtn_left.c \
../src/�½��ļ���/LVGL/examples/assets/imgbtn_mid.c \
../src/�½��ļ���/LVGL/examples/assets/imgbtn_right.c 

C_DEPS += \
./src/�½��ļ���/LVGL/examples/assets/animimg001.d \
./src/�½��ļ���/LVGL/examples/assets/animimg002.d \
./src/�½��ļ���/LVGL/examples/assets/animimg003.d \
./src/�½��ļ���/LVGL/examples/assets/img_caret_down.d \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_alpha16.d \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_argb.d \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_chroma_keyed.d \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_indexed16.d \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_rgb.d \
./src/�½��ļ���/LVGL/examples/assets/img_hand.d \
./src/�½��ļ���/LVGL/examples/assets/img_skew_strip.d \
./src/�½��ļ���/LVGL/examples/assets/img_star.d \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_left.d \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_mid.d \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_right.d 

OBJS += \
./src/�½��ļ���/LVGL/examples/assets/animimg001.o \
./src/�½��ļ���/LVGL/examples/assets/animimg002.o \
./src/�½��ļ���/LVGL/examples/assets/animimg003.o \
./src/�½��ļ���/LVGL/examples/assets/img_caret_down.o \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_alpha16.o \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_argb.o \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_chroma_keyed.o \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_indexed16.o \
./src/�½��ļ���/LVGL/examples/assets/img_cogwheel_rgb.o \
./src/�½��ļ���/LVGL/examples/assets/img_hand.o \
./src/�½��ļ���/LVGL/examples/assets/img_skew_strip.o \
./src/�½��ļ���/LVGL/examples/assets/img_star.o \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_left.o \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_mid.o \
./src/�½��ļ���/LVGL/examples/assets/imgbtn_right.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/examples/assets/%.o: ../src/�½��ļ���/LVGL/examples/assets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
