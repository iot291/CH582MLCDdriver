################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/src/core/lv_disp.c \
../src/新建文件夹/LVGL/src/core/lv_event.c \
../src/新建文件夹/LVGL/src/core/lv_group.c \
../src/新建文件夹/LVGL/src/core/lv_indev.c \
../src/新建文件夹/LVGL/src/core/lv_indev_scroll.c \
../src/新建文件夹/LVGL/src/core/lv_obj.c \
../src/新建文件夹/LVGL/src/core/lv_obj_class.c \
../src/新建文件夹/LVGL/src/core/lv_obj_draw.c \
../src/新建文件夹/LVGL/src/core/lv_obj_pos.c \
../src/新建文件夹/LVGL/src/core/lv_obj_scroll.c \
../src/新建文件夹/LVGL/src/core/lv_obj_style.c \
../src/新建文件夹/LVGL/src/core/lv_obj_style_gen.c \
../src/新建文件夹/LVGL/src/core/lv_obj_tree.c \
../src/新建文件夹/LVGL/src/core/lv_refr.c \
../src/新建文件夹/LVGL/src/core/lv_theme.c 

C_DEPS += \
./src/新建文件夹/LVGL/src/core/lv_disp.d \
./src/新建文件夹/LVGL/src/core/lv_event.d \
./src/新建文件夹/LVGL/src/core/lv_group.d \
./src/新建文件夹/LVGL/src/core/lv_indev.d \
./src/新建文件夹/LVGL/src/core/lv_indev_scroll.d \
./src/新建文件夹/LVGL/src/core/lv_obj.d \
./src/新建文件夹/LVGL/src/core/lv_obj_class.d \
./src/新建文件夹/LVGL/src/core/lv_obj_draw.d \
./src/新建文件夹/LVGL/src/core/lv_obj_pos.d \
./src/新建文件夹/LVGL/src/core/lv_obj_scroll.d \
./src/新建文件夹/LVGL/src/core/lv_obj_style.d \
./src/新建文件夹/LVGL/src/core/lv_obj_style_gen.d \
./src/新建文件夹/LVGL/src/core/lv_obj_tree.d \
./src/新建文件夹/LVGL/src/core/lv_refr.d \
./src/新建文件夹/LVGL/src/core/lv_theme.d 

OBJS += \
./src/新建文件夹/LVGL/src/core/lv_disp.o \
./src/新建文件夹/LVGL/src/core/lv_event.o \
./src/新建文件夹/LVGL/src/core/lv_group.o \
./src/新建文件夹/LVGL/src/core/lv_indev.o \
./src/新建文件夹/LVGL/src/core/lv_indev_scroll.o \
./src/新建文件夹/LVGL/src/core/lv_obj.o \
./src/新建文件夹/LVGL/src/core/lv_obj_class.o \
./src/新建文件夹/LVGL/src/core/lv_obj_draw.o \
./src/新建文件夹/LVGL/src/core/lv_obj_pos.o \
./src/新建文件夹/LVGL/src/core/lv_obj_scroll.o \
./src/新建文件夹/LVGL/src/core/lv_obj_style.o \
./src/新建文件夹/LVGL/src/core/lv_obj_style_gen.o \
./src/新建文件夹/LVGL/src/core/lv_obj_tree.o \
./src/新建文件夹/LVGL/src/core/lv_refr.o \
./src/新建文件夹/LVGL/src/core/lv_theme.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/src/core/%.o: ../src/新建文件夹/LVGL/src/core/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
