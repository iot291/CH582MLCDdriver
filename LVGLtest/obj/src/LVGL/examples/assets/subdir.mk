################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/examples/assets/animimg001.c \
../src/LVGL/examples/assets/animimg002.c \
../src/LVGL/examples/assets/animimg003.c \
../src/LVGL/examples/assets/img_caret_down.c \
../src/LVGL/examples/assets/img_cogwheel_alpha16.c \
../src/LVGL/examples/assets/img_cogwheel_argb.c \
../src/LVGL/examples/assets/img_cogwheel_chroma_keyed.c \
../src/LVGL/examples/assets/img_cogwheel_indexed16.c \
../src/LVGL/examples/assets/img_cogwheel_rgb.c \
../src/LVGL/examples/assets/img_hand.c \
../src/LVGL/examples/assets/img_skew_strip.c \
../src/LVGL/examples/assets/img_star.c \
../src/LVGL/examples/assets/imgbtn_left.c \
../src/LVGL/examples/assets/imgbtn_mid.c \
../src/LVGL/examples/assets/imgbtn_right.c 

C_DEPS += \
./src/LVGL/examples/assets/animimg001.d \
./src/LVGL/examples/assets/animimg002.d \
./src/LVGL/examples/assets/animimg003.d \
./src/LVGL/examples/assets/img_caret_down.d \
./src/LVGL/examples/assets/img_cogwheel_alpha16.d \
./src/LVGL/examples/assets/img_cogwheel_argb.d \
./src/LVGL/examples/assets/img_cogwheel_chroma_keyed.d \
./src/LVGL/examples/assets/img_cogwheel_indexed16.d \
./src/LVGL/examples/assets/img_cogwheel_rgb.d \
./src/LVGL/examples/assets/img_hand.d \
./src/LVGL/examples/assets/img_skew_strip.d \
./src/LVGL/examples/assets/img_star.d \
./src/LVGL/examples/assets/imgbtn_left.d \
./src/LVGL/examples/assets/imgbtn_mid.d \
./src/LVGL/examples/assets/imgbtn_right.d 

OBJS += \
./src/LVGL/examples/assets/animimg001.o \
./src/LVGL/examples/assets/animimg002.o \
./src/LVGL/examples/assets/animimg003.o \
./src/LVGL/examples/assets/img_caret_down.o \
./src/LVGL/examples/assets/img_cogwheel_alpha16.o \
./src/LVGL/examples/assets/img_cogwheel_argb.o \
./src/LVGL/examples/assets/img_cogwheel_chroma_keyed.o \
./src/LVGL/examples/assets/img_cogwheel_indexed16.o \
./src/LVGL/examples/assets/img_cogwheel_rgb.o \
./src/LVGL/examples/assets/img_hand.o \
./src/LVGL/examples/assets/img_skew_strip.o \
./src/LVGL/examples/assets/img_star.o \
./src/LVGL/examples/assets/imgbtn_left.o \
./src/LVGL/examples/assets/imgbtn_mid.o \
./src/LVGL/examples/assets/imgbtn_right.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/examples/assets/%.o: ../src/LVGL/examples/assets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/widgets" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/misc" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/hal" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/font" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/extra" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/draw" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/core" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
