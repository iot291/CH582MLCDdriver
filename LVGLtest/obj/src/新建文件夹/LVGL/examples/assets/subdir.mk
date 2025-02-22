################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/examples/assets/animimg001.c \
../src/新建文件夹/LVGL/examples/assets/animimg002.c \
../src/新建文件夹/LVGL/examples/assets/animimg003.c \
../src/新建文件夹/LVGL/examples/assets/img_caret_down.c \
../src/新建文件夹/LVGL/examples/assets/img_cogwheel_alpha16.c \
../src/新建文件夹/LVGL/examples/assets/img_cogwheel_argb.c \
../src/新建文件夹/LVGL/examples/assets/img_cogwheel_chroma_keyed.c \
../src/新建文件夹/LVGL/examples/assets/img_cogwheel_indexed16.c \
../src/新建文件夹/LVGL/examples/assets/img_cogwheel_rgb.c \
../src/新建文件夹/LVGL/examples/assets/img_hand.c \
../src/新建文件夹/LVGL/examples/assets/img_skew_strip.c \
../src/新建文件夹/LVGL/examples/assets/img_star.c \
../src/新建文件夹/LVGL/examples/assets/imgbtn_left.c \
../src/新建文件夹/LVGL/examples/assets/imgbtn_mid.c \
../src/新建文件夹/LVGL/examples/assets/imgbtn_right.c 

C_DEPS += \
./src/新建文件夹/LVGL/examples/assets/animimg001.d \
./src/新建文件夹/LVGL/examples/assets/animimg002.d \
./src/新建文件夹/LVGL/examples/assets/animimg003.d \
./src/新建文件夹/LVGL/examples/assets/img_caret_down.d \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_alpha16.d \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_argb.d \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_chroma_keyed.d \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_indexed16.d \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_rgb.d \
./src/新建文件夹/LVGL/examples/assets/img_hand.d \
./src/新建文件夹/LVGL/examples/assets/img_skew_strip.d \
./src/新建文件夹/LVGL/examples/assets/img_star.d \
./src/新建文件夹/LVGL/examples/assets/imgbtn_left.d \
./src/新建文件夹/LVGL/examples/assets/imgbtn_mid.d \
./src/新建文件夹/LVGL/examples/assets/imgbtn_right.d 

OBJS += \
./src/新建文件夹/LVGL/examples/assets/animimg001.o \
./src/新建文件夹/LVGL/examples/assets/animimg002.o \
./src/新建文件夹/LVGL/examples/assets/animimg003.o \
./src/新建文件夹/LVGL/examples/assets/img_caret_down.o \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_alpha16.o \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_argb.o \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_chroma_keyed.o \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_indexed16.o \
./src/新建文件夹/LVGL/examples/assets/img_cogwheel_rgb.o \
./src/新建文件夹/LVGL/examples/assets/img_hand.o \
./src/新建文件夹/LVGL/examples/assets/img_skew_strip.o \
./src/新建文件夹/LVGL/examples/assets/img_star.o \
./src/新建文件夹/LVGL/examples/assets/imgbtn_left.o \
./src/新建文件夹/LVGL/examples/assets/imgbtn_mid.o \
./src/新建文件夹/LVGL/examples/assets/imgbtn_right.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/examples/assets/%.o: ../src/新建文件夹/LVGL/examples/assets/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
