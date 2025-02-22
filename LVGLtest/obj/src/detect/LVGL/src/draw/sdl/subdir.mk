################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_arc.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_bg.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_composite.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_img.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_label.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_layer.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_line.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_mask.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_polygon.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_rect.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../src/detect/LVGL/src/draw/sdl/lv_draw_sdl_utils.c 

C_DEPS += \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_arc.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_bg.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_composite.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_img.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_label.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_layer.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_line.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_mask.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_polygon.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_rect.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_utils.d 

OBJS += \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_arc.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_bg.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_composite.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_img.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_label.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_layer.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_line.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_mask.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_polygon.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_rect.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./src/detect/LVGL/src/draw/sdl/lv_draw_sdl_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/src/draw/sdl/%.o: ../src/detect/LVGL/src/draw/sdl/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
