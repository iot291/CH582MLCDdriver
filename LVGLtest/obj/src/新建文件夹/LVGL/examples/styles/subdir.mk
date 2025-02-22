################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_1.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_10.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_11.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_12.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_13.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_14.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_15.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_2.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_3.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_4.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_5.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_6.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_7.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_8.c \
../src/新建文件夹/LVGL/examples/styles/lv_example_style_9.c 

C_DEPS += \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_1.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_10.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_11.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_12.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_13.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_14.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_15.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_2.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_3.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_4.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_5.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_6.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_7.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_8.d \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_9.d 

OBJS += \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_1.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_10.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_11.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_12.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_13.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_14.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_15.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_2.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_3.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_4.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_5.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_6.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_7.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_8.o \
./src/新建文件夹/LVGL/examples/styles/lv_example_style_9.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/examples/styles/%.o: ../src/新建文件夹/LVGL/examples/styles/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
