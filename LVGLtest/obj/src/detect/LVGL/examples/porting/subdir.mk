################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/examples/porting/lv_port_disp.c \
../src/detect/LVGL/examples/porting/lv_port_fs.c \
../src/detect/LVGL/examples/porting/lv_port_indev.c 

C_DEPS += \
./src/detect/LVGL/examples/porting/lv_port_disp.d \
./src/detect/LVGL/examples/porting/lv_port_fs.d \
./src/detect/LVGL/examples/porting/lv_port_indev.d 

OBJS += \
./src/detect/LVGL/examples/porting/lv_port_disp.o \
./src/detect/LVGL/examples/porting/lv_port_fs.o \
./src/detect/LVGL/examples/porting/lv_port_indev.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/examples/porting/%.o: ../src/detect/LVGL/examples/porting/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
