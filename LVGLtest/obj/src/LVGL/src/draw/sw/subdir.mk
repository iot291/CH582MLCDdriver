################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/draw/sw/lv_draw_sw.c \
../src/LVGL/src/draw/sw/lv_draw_sw_arc.c \
../src/LVGL/src/draw/sw/lv_draw_sw_blend.c \
../src/LVGL/src/draw/sw/lv_draw_sw_dither.c \
../src/LVGL/src/draw/sw/lv_draw_sw_gradient.c \
../src/LVGL/src/draw/sw/lv_draw_sw_img.c \
../src/LVGL/src/draw/sw/lv_draw_sw_layer.c \
../src/LVGL/src/draw/sw/lv_draw_sw_letter.c \
../src/LVGL/src/draw/sw/lv_draw_sw_line.c \
../src/LVGL/src/draw/sw/lv_draw_sw_polygon.c \
../src/LVGL/src/draw/sw/lv_draw_sw_rect.c \
../src/LVGL/src/draw/sw/lv_draw_sw_transform.c 

C_DEPS += \
./src/LVGL/src/draw/sw/lv_draw_sw.d \
./src/LVGL/src/draw/sw/lv_draw_sw_arc.d \
./src/LVGL/src/draw/sw/lv_draw_sw_blend.d \
./src/LVGL/src/draw/sw/lv_draw_sw_dither.d \
./src/LVGL/src/draw/sw/lv_draw_sw_gradient.d \
./src/LVGL/src/draw/sw/lv_draw_sw_img.d \
./src/LVGL/src/draw/sw/lv_draw_sw_layer.d \
./src/LVGL/src/draw/sw/lv_draw_sw_letter.d \
./src/LVGL/src/draw/sw/lv_draw_sw_line.d \
./src/LVGL/src/draw/sw/lv_draw_sw_polygon.d \
./src/LVGL/src/draw/sw/lv_draw_sw_rect.d \
./src/LVGL/src/draw/sw/lv_draw_sw_transform.d 

OBJS += \
./src/LVGL/src/draw/sw/lv_draw_sw.o \
./src/LVGL/src/draw/sw/lv_draw_sw_arc.o \
./src/LVGL/src/draw/sw/lv_draw_sw_blend.o \
./src/LVGL/src/draw/sw/lv_draw_sw_dither.o \
./src/LVGL/src/draw/sw/lv_draw_sw_gradient.o \
./src/LVGL/src/draw/sw/lv_draw_sw_img.o \
./src/LVGL/src/draw/sw/lv_draw_sw_layer.o \
./src/LVGL/src/draw/sw/lv_draw_sw_letter.o \
./src/LVGL/src/draw/sw/lv_draw_sw_line.o \
./src/LVGL/src/draw/sw/lv_draw_sw_polygon.o \
./src/LVGL/src/draw/sw/lv_draw_sw_rect.o \
./src/LVGL/src/draw/sw/lv_draw_sw_transform.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/draw/sw/%.o: ../src/LVGL/src/draw/sw/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
