################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/widgets/lv_arc.c \
../src/LVGL/src/widgets/lv_bar.c \
../src/LVGL/src/widgets/lv_btn.c \
../src/LVGL/src/widgets/lv_btnmatrix.c \
../src/LVGL/src/widgets/lv_canvas.c \
../src/LVGL/src/widgets/lv_checkbox.c \
../src/LVGL/src/widgets/lv_dropdown.c \
../src/LVGL/src/widgets/lv_img.c \
../src/LVGL/src/widgets/lv_label.c \
../src/LVGL/src/widgets/lv_line.c \
../src/LVGL/src/widgets/lv_objx_templ.c \
../src/LVGL/src/widgets/lv_roller.c \
../src/LVGL/src/widgets/lv_slider.c \
../src/LVGL/src/widgets/lv_switch.c \
../src/LVGL/src/widgets/lv_table.c \
../src/LVGL/src/widgets/lv_textarea.c 

C_DEPS += \
./src/LVGL/src/widgets/lv_arc.d \
./src/LVGL/src/widgets/lv_bar.d \
./src/LVGL/src/widgets/lv_btn.d \
./src/LVGL/src/widgets/lv_btnmatrix.d \
./src/LVGL/src/widgets/lv_canvas.d \
./src/LVGL/src/widgets/lv_checkbox.d \
./src/LVGL/src/widgets/lv_dropdown.d \
./src/LVGL/src/widgets/lv_img.d \
./src/LVGL/src/widgets/lv_label.d \
./src/LVGL/src/widgets/lv_line.d \
./src/LVGL/src/widgets/lv_objx_templ.d \
./src/LVGL/src/widgets/lv_roller.d \
./src/LVGL/src/widgets/lv_slider.d \
./src/LVGL/src/widgets/lv_switch.d \
./src/LVGL/src/widgets/lv_table.d \
./src/LVGL/src/widgets/lv_textarea.d 

OBJS += \
./src/LVGL/src/widgets/lv_arc.o \
./src/LVGL/src/widgets/lv_bar.o \
./src/LVGL/src/widgets/lv_btn.o \
./src/LVGL/src/widgets/lv_btnmatrix.o \
./src/LVGL/src/widgets/lv_canvas.o \
./src/LVGL/src/widgets/lv_checkbox.o \
./src/LVGL/src/widgets/lv_dropdown.o \
./src/LVGL/src/widgets/lv_img.o \
./src/LVGL/src/widgets/lv_label.o \
./src/LVGL/src/widgets/lv_line.o \
./src/LVGL/src/widgets/lv_objx_templ.o \
./src/LVGL/src/widgets/lv_roller.o \
./src/LVGL/src/widgets/lv_slider.o \
./src/LVGL/src/widgets/lv_switch.o \
./src/LVGL/src/widgets/lv_table.o \
./src/LVGL/src/widgets/lv_textarea.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/widgets/%.o: ../src/LVGL/src/widgets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline/screens" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
