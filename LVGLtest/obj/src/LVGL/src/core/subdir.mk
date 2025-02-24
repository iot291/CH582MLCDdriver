################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/core/lv_disp.c \
../src/LVGL/src/core/lv_event.c \
../src/LVGL/src/core/lv_group.c \
../src/LVGL/src/core/lv_indev.c \
../src/LVGL/src/core/lv_indev_scroll.c \
../src/LVGL/src/core/lv_obj.c \
../src/LVGL/src/core/lv_obj_class.c \
../src/LVGL/src/core/lv_obj_draw.c \
../src/LVGL/src/core/lv_obj_pos.c \
../src/LVGL/src/core/lv_obj_scroll.c \
../src/LVGL/src/core/lv_obj_style.c \
../src/LVGL/src/core/lv_obj_style_gen.c \
../src/LVGL/src/core/lv_obj_tree.c \
../src/LVGL/src/core/lv_refr.c \
../src/LVGL/src/core/lv_theme.c 

C_DEPS += \
./src/LVGL/src/core/lv_disp.d \
./src/LVGL/src/core/lv_event.d \
./src/LVGL/src/core/lv_group.d \
./src/LVGL/src/core/lv_indev.d \
./src/LVGL/src/core/lv_indev_scroll.d \
./src/LVGL/src/core/lv_obj.d \
./src/LVGL/src/core/lv_obj_class.d \
./src/LVGL/src/core/lv_obj_draw.d \
./src/LVGL/src/core/lv_obj_pos.d \
./src/LVGL/src/core/lv_obj_scroll.d \
./src/LVGL/src/core/lv_obj_style.d \
./src/LVGL/src/core/lv_obj_style_gen.d \
./src/LVGL/src/core/lv_obj_tree.d \
./src/LVGL/src/core/lv_refr.d \
./src/LVGL/src/core/lv_theme.d 

OBJS += \
./src/LVGL/src/core/lv_disp.o \
./src/LVGL/src/core/lv_event.o \
./src/LVGL/src/core/lv_group.o \
./src/LVGL/src/core/lv_indev.o \
./src/LVGL/src/core/lv_indev_scroll.o \
./src/LVGL/src/core/lv_obj.o \
./src/LVGL/src/core/lv_obj_class.o \
./src/LVGL/src/core/lv_obj_draw.o \
./src/LVGL/src/core/lv_obj_pos.o \
./src/LVGL/src/core/lv_obj_scroll.o \
./src/LVGL/src/core/lv_obj_style.o \
./src/LVGL/src/core/lv_obj_style_gen.o \
./src/LVGL/src/core/lv_obj_tree.o \
./src/LVGL/src/core/lv_refr.o \
./src/LVGL/src/core/lv_theme.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/core/%.o: ../src/LVGL/src/core/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline/screens" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
