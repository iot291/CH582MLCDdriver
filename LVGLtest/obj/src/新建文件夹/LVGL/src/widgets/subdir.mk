################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/src/widgets/lv_arc.c \
../src/�½��ļ���/LVGL/src/widgets/lv_bar.c \
../src/�½��ļ���/LVGL/src/widgets/lv_btn.c \
../src/�½��ļ���/LVGL/src/widgets/lv_btnmatrix.c \
../src/�½��ļ���/LVGL/src/widgets/lv_canvas.c \
../src/�½��ļ���/LVGL/src/widgets/lv_checkbox.c \
../src/�½��ļ���/LVGL/src/widgets/lv_dropdown.c \
../src/�½��ļ���/LVGL/src/widgets/lv_img.c \
../src/�½��ļ���/LVGL/src/widgets/lv_label.c \
../src/�½��ļ���/LVGL/src/widgets/lv_line.c \
../src/�½��ļ���/LVGL/src/widgets/lv_objx_templ.c \
../src/�½��ļ���/LVGL/src/widgets/lv_roller.c \
../src/�½��ļ���/LVGL/src/widgets/lv_slider.c \
../src/�½��ļ���/LVGL/src/widgets/lv_switch.c \
../src/�½��ļ���/LVGL/src/widgets/lv_table.c \
../src/�½��ļ���/LVGL/src/widgets/lv_textarea.c 

C_DEPS += \
./src/�½��ļ���/LVGL/src/widgets/lv_arc.d \
./src/�½��ļ���/LVGL/src/widgets/lv_bar.d \
./src/�½��ļ���/LVGL/src/widgets/lv_btn.d \
./src/�½��ļ���/LVGL/src/widgets/lv_btnmatrix.d \
./src/�½��ļ���/LVGL/src/widgets/lv_canvas.d \
./src/�½��ļ���/LVGL/src/widgets/lv_checkbox.d \
./src/�½��ļ���/LVGL/src/widgets/lv_dropdown.d \
./src/�½��ļ���/LVGL/src/widgets/lv_img.d \
./src/�½��ļ���/LVGL/src/widgets/lv_label.d \
./src/�½��ļ���/LVGL/src/widgets/lv_line.d \
./src/�½��ļ���/LVGL/src/widgets/lv_objx_templ.d \
./src/�½��ļ���/LVGL/src/widgets/lv_roller.d \
./src/�½��ļ���/LVGL/src/widgets/lv_slider.d \
./src/�½��ļ���/LVGL/src/widgets/lv_switch.d \
./src/�½��ļ���/LVGL/src/widgets/lv_table.d \
./src/�½��ļ���/LVGL/src/widgets/lv_textarea.d 

OBJS += \
./src/�½��ļ���/LVGL/src/widgets/lv_arc.o \
./src/�½��ļ���/LVGL/src/widgets/lv_bar.o \
./src/�½��ļ���/LVGL/src/widgets/lv_btn.o \
./src/�½��ļ���/LVGL/src/widgets/lv_btnmatrix.o \
./src/�½��ļ���/LVGL/src/widgets/lv_canvas.o \
./src/�½��ļ���/LVGL/src/widgets/lv_checkbox.o \
./src/�½��ļ���/LVGL/src/widgets/lv_dropdown.o \
./src/�½��ļ���/LVGL/src/widgets/lv_img.o \
./src/�½��ļ���/LVGL/src/widgets/lv_label.o \
./src/�½��ļ���/LVGL/src/widgets/lv_line.o \
./src/�½��ļ���/LVGL/src/widgets/lv_objx_templ.o \
./src/�½��ļ���/LVGL/src/widgets/lv_roller.o \
./src/�½��ļ���/LVGL/src/widgets/lv_slider.o \
./src/�½��ļ���/LVGL/src/widgets/lv_switch.o \
./src/�½��ļ���/LVGL/src/widgets/lv_table.o \
./src/�½��ļ���/LVGL/src/widgets/lv_textarea.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/src/widgets/%.o: ../src/�½��ļ���/LVGL/src/widgets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
