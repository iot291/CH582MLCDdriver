################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/src/draw/sw/lv_draw_sw.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_arc.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_blend.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_dither.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_gradient.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_img.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_layer.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_letter.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_line.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_polygon.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_rect.c \
../src/detect/LVGL/src/draw/sw/lv_draw_sw_transform.c 

C_DEPS += \
./src/detect/LVGL/src/draw/sw/lv_draw_sw.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_arc.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_blend.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_dither.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_gradient.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_img.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_layer.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_letter.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_line.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_polygon.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_rect.d \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_transform.d 

OBJS += \
./src/detect/LVGL/src/draw/sw/lv_draw_sw.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_arc.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_blend.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_dither.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_gradient.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_img.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_layer.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_letter.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_line.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_polygon.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_rect.o \
./src/detect/LVGL/src/draw/sw/lv_draw_sw_transform.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/src/draw/sw/%.o: ../src/detect/LVGL/src/draw/sw/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
