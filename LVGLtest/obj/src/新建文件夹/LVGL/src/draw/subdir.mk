################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/src/draw/lv_draw.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_arc.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_img.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_label.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_layer.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_line.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_mask.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_rect.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_transform.c \
../src/�½��ļ���/LVGL/src/draw/lv_draw_triangle.c \
../src/�½��ļ���/LVGL/src/draw/lv_img_buf.c \
../src/�½��ļ���/LVGL/src/draw/lv_img_cache.c \
../src/�½��ļ���/LVGL/src/draw/lv_img_decoder.c 

C_DEPS += \
./src/�½��ļ���/LVGL/src/draw/lv_draw.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_arc.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_img.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_label.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_layer.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_line.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_mask.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_rect.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_transform.d \
./src/�½��ļ���/LVGL/src/draw/lv_draw_triangle.d \
./src/�½��ļ���/LVGL/src/draw/lv_img_buf.d \
./src/�½��ļ���/LVGL/src/draw/lv_img_cache.d \
./src/�½��ļ���/LVGL/src/draw/lv_img_decoder.d 

OBJS += \
./src/�½��ļ���/LVGL/src/draw/lv_draw.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_arc.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_img.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_label.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_layer.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_line.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_mask.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_rect.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_transform.o \
./src/�½��ļ���/LVGL/src/draw/lv_draw_triangle.o \
./src/�½��ļ���/LVGL/src/draw/lv_img_buf.o \
./src/�½��ļ���/LVGL/src/draw/lv_img_cache.o \
./src/�½��ļ���/LVGL/src/draw/lv_img_decoder.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/src/draw/%.o: ../src/�½��ļ���/LVGL/src/draw/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
