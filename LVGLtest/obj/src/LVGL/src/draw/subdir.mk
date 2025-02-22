################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/draw/lv_draw.c \
../src/LVGL/src/draw/lv_draw_arc.c \
../src/LVGL/src/draw/lv_draw_img.c \
../src/LVGL/src/draw/lv_draw_label.c \
../src/LVGL/src/draw/lv_draw_layer.c \
../src/LVGL/src/draw/lv_draw_line.c \
../src/LVGL/src/draw/lv_draw_mask.c \
../src/LVGL/src/draw/lv_draw_rect.c \
../src/LVGL/src/draw/lv_draw_transform.c \
../src/LVGL/src/draw/lv_draw_triangle.c \
../src/LVGL/src/draw/lv_img_buf.c \
../src/LVGL/src/draw/lv_img_cache.c \
../src/LVGL/src/draw/lv_img_decoder.c 

C_DEPS += \
./src/LVGL/src/draw/lv_draw.d \
./src/LVGL/src/draw/lv_draw_arc.d \
./src/LVGL/src/draw/lv_draw_img.d \
./src/LVGL/src/draw/lv_draw_label.d \
./src/LVGL/src/draw/lv_draw_layer.d \
./src/LVGL/src/draw/lv_draw_line.d \
./src/LVGL/src/draw/lv_draw_mask.d \
./src/LVGL/src/draw/lv_draw_rect.d \
./src/LVGL/src/draw/lv_draw_transform.d \
./src/LVGL/src/draw/lv_draw_triangle.d \
./src/LVGL/src/draw/lv_img_buf.d \
./src/LVGL/src/draw/lv_img_cache.d \
./src/LVGL/src/draw/lv_img_decoder.d 

OBJS += \
./src/LVGL/src/draw/lv_draw.o \
./src/LVGL/src/draw/lv_draw_arc.o \
./src/LVGL/src/draw/lv_draw_img.o \
./src/LVGL/src/draw/lv_draw_label.o \
./src/LVGL/src/draw/lv_draw_layer.o \
./src/LVGL/src/draw/lv_draw_line.o \
./src/LVGL/src/draw/lv_draw_mask.o \
./src/LVGL/src/draw/lv_draw_rect.o \
./src/LVGL/src/draw/lv_draw_transform.o \
./src/LVGL/src/draw/lv_draw_triangle.o \
./src/LVGL/src/draw/lv_img_buf.o \
./src/LVGL/src/draw/lv_img_cache.o \
./src/LVGL/src/draw/lv_img_decoder.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/draw/%.o: ../src/LVGL/src/draw/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
