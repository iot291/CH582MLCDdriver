################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/src/widgets/lv_arc.c \
../src/新建文件夹/LVGL/src/widgets/lv_bar.c \
../src/新建文件夹/LVGL/src/widgets/lv_btn.c \
../src/新建文件夹/LVGL/src/widgets/lv_btnmatrix.c \
../src/新建文件夹/LVGL/src/widgets/lv_canvas.c \
../src/新建文件夹/LVGL/src/widgets/lv_checkbox.c \
../src/新建文件夹/LVGL/src/widgets/lv_dropdown.c \
../src/新建文件夹/LVGL/src/widgets/lv_img.c \
../src/新建文件夹/LVGL/src/widgets/lv_label.c \
../src/新建文件夹/LVGL/src/widgets/lv_line.c \
../src/新建文件夹/LVGL/src/widgets/lv_objx_templ.c \
../src/新建文件夹/LVGL/src/widgets/lv_roller.c \
../src/新建文件夹/LVGL/src/widgets/lv_slider.c \
../src/新建文件夹/LVGL/src/widgets/lv_switch.c \
../src/新建文件夹/LVGL/src/widgets/lv_table.c \
../src/新建文件夹/LVGL/src/widgets/lv_textarea.c 

C_DEPS += \
./src/新建文件夹/LVGL/src/widgets/lv_arc.d \
./src/新建文件夹/LVGL/src/widgets/lv_bar.d \
./src/新建文件夹/LVGL/src/widgets/lv_btn.d \
./src/新建文件夹/LVGL/src/widgets/lv_btnmatrix.d \
./src/新建文件夹/LVGL/src/widgets/lv_canvas.d \
./src/新建文件夹/LVGL/src/widgets/lv_checkbox.d \
./src/新建文件夹/LVGL/src/widgets/lv_dropdown.d \
./src/新建文件夹/LVGL/src/widgets/lv_img.d \
./src/新建文件夹/LVGL/src/widgets/lv_label.d \
./src/新建文件夹/LVGL/src/widgets/lv_line.d \
./src/新建文件夹/LVGL/src/widgets/lv_objx_templ.d \
./src/新建文件夹/LVGL/src/widgets/lv_roller.d \
./src/新建文件夹/LVGL/src/widgets/lv_slider.d \
./src/新建文件夹/LVGL/src/widgets/lv_switch.d \
./src/新建文件夹/LVGL/src/widgets/lv_table.d \
./src/新建文件夹/LVGL/src/widgets/lv_textarea.d 

OBJS += \
./src/新建文件夹/LVGL/src/widgets/lv_arc.o \
./src/新建文件夹/LVGL/src/widgets/lv_bar.o \
./src/新建文件夹/LVGL/src/widgets/lv_btn.o \
./src/新建文件夹/LVGL/src/widgets/lv_btnmatrix.o \
./src/新建文件夹/LVGL/src/widgets/lv_canvas.o \
./src/新建文件夹/LVGL/src/widgets/lv_checkbox.o \
./src/新建文件夹/LVGL/src/widgets/lv_dropdown.o \
./src/新建文件夹/LVGL/src/widgets/lv_img.o \
./src/新建文件夹/LVGL/src/widgets/lv_label.o \
./src/新建文件夹/LVGL/src/widgets/lv_line.o \
./src/新建文件夹/LVGL/src/widgets/lv_objx_templ.o \
./src/新建文件夹/LVGL/src/widgets/lv_roller.o \
./src/新建文件夹/LVGL/src/widgets/lv_slider.o \
./src/新建文件夹/LVGL/src/widgets/lv_switch.o \
./src/新建文件夹/LVGL/src/widgets/lv_table.o \
./src/新建文件夹/LVGL/src/widgets/lv_textarea.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/src/widgets/%.o: ../src/新建文件夹/LVGL/src/widgets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
