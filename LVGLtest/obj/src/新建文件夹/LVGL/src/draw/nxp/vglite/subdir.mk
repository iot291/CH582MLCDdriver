################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_buf.c \
../src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_utils.c 

C_DEPS += \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_buf.d \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_buf.o \
./src/�½��ļ���/LVGL/src/draw/nxp/vglite/lv_vglite_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/src/draw/nxp/vglite/%.o: ../src/�½��ļ���/LVGL/src/draw/nxp/vglite/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
