################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_arc.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_blend.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_dither.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_gradient.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_img.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_layer.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_letter.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_line.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_polygon.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_rect.c \
../src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_transform.c 

C_DEPS += \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_arc.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_blend.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_dither.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_gradient.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_img.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_layer.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_letter.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_line.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_polygon.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_rect.d \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_transform.d 

OBJS += \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_arc.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_blend.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_dither.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_gradient.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_img.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_layer.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_letter.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_line.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_polygon.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_rect.o \
./src/�½��ļ���/LVGL/src/draw/sw/lv_draw_sw_transform.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/src/draw/sw/%.o: ../src/�½��ļ���/LVGL/src/draw/sw/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
