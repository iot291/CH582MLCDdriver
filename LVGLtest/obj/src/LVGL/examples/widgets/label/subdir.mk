################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/examples/widgets/label/lv_example_label_1.c \
../src/LVGL/examples/widgets/label/lv_example_label_2.c \
../src/LVGL/examples/widgets/label/lv_example_label_3.c \
../src/LVGL/examples/widgets/label/lv_example_label_4.c \
../src/LVGL/examples/widgets/label/lv_example_label_5.c 

C_DEPS += \
./src/LVGL/examples/widgets/label/lv_example_label_1.d \
./src/LVGL/examples/widgets/label/lv_example_label_2.d \
./src/LVGL/examples/widgets/label/lv_example_label_3.d \
./src/LVGL/examples/widgets/label/lv_example_label_4.d \
./src/LVGL/examples/widgets/label/lv_example_label_5.d 

OBJS += \
./src/LVGL/examples/widgets/label/lv_example_label_1.o \
./src/LVGL/examples/widgets/label/lv_example_label_2.o \
./src/LVGL/examples/widgets/label/lv_example_label_3.o \
./src/LVGL/examples/widgets/label/lv_example_label_4.o \
./src/LVGL/examples/widgets/label/lv_example_label_5.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/examples/widgets/label/%.o: ../src/LVGL/examples/widgets/label/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/widgets" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/misc" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/hal" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/font" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/extra" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/draw" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src/core" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
