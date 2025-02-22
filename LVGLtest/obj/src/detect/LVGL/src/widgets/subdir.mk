################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/src/widgets/lv_arc.c \
../src/detect/LVGL/src/widgets/lv_bar.c \
../src/detect/LVGL/src/widgets/lv_btn.c \
../src/detect/LVGL/src/widgets/lv_btnmatrix.c \
../src/detect/LVGL/src/widgets/lv_canvas.c \
../src/detect/LVGL/src/widgets/lv_checkbox.c \
../src/detect/LVGL/src/widgets/lv_dropdown.c \
../src/detect/LVGL/src/widgets/lv_img.c \
../src/detect/LVGL/src/widgets/lv_label.c \
../src/detect/LVGL/src/widgets/lv_line.c \
../src/detect/LVGL/src/widgets/lv_objx_templ.c \
../src/detect/LVGL/src/widgets/lv_roller.c \
../src/detect/LVGL/src/widgets/lv_slider.c \
../src/detect/LVGL/src/widgets/lv_switch.c \
../src/detect/LVGL/src/widgets/lv_table.c \
../src/detect/LVGL/src/widgets/lv_textarea.c 

C_DEPS += \
./src/detect/LVGL/src/widgets/lv_arc.d \
./src/detect/LVGL/src/widgets/lv_bar.d \
./src/detect/LVGL/src/widgets/lv_btn.d \
./src/detect/LVGL/src/widgets/lv_btnmatrix.d \
./src/detect/LVGL/src/widgets/lv_canvas.d \
./src/detect/LVGL/src/widgets/lv_checkbox.d \
./src/detect/LVGL/src/widgets/lv_dropdown.d \
./src/detect/LVGL/src/widgets/lv_img.d \
./src/detect/LVGL/src/widgets/lv_label.d \
./src/detect/LVGL/src/widgets/lv_line.d \
./src/detect/LVGL/src/widgets/lv_objx_templ.d \
./src/detect/LVGL/src/widgets/lv_roller.d \
./src/detect/LVGL/src/widgets/lv_slider.d \
./src/detect/LVGL/src/widgets/lv_switch.d \
./src/detect/LVGL/src/widgets/lv_table.d \
./src/detect/LVGL/src/widgets/lv_textarea.d 

OBJS += \
./src/detect/LVGL/src/widgets/lv_arc.o \
./src/detect/LVGL/src/widgets/lv_bar.o \
./src/detect/LVGL/src/widgets/lv_btn.o \
./src/detect/LVGL/src/widgets/lv_btnmatrix.o \
./src/detect/LVGL/src/widgets/lv_canvas.o \
./src/detect/LVGL/src/widgets/lv_checkbox.o \
./src/detect/LVGL/src/widgets/lv_dropdown.o \
./src/detect/LVGL/src/widgets/lv_img.o \
./src/detect/LVGL/src/widgets/lv_label.o \
./src/detect/LVGL/src/widgets/lv_line.o \
./src/detect/LVGL/src/widgets/lv_objx_templ.o \
./src/detect/LVGL/src/widgets/lv_roller.o \
./src/detect/LVGL/src/widgets/lv_slider.o \
./src/detect/LVGL/src/widgets/lv_switch.o \
./src/detect/LVGL/src/widgets/lv_table.o \
./src/detect/LVGL/src/widgets/lv_textarea.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/src/widgets/%.o: ../src/detect/LVGL/src/widgets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
