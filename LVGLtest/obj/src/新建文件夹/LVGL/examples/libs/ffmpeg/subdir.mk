################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_1.c \
../src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_2.c 

C_DEPS += \
./src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_1.d \
./src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_2.d 

OBJS += \
./src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_1.o \
./src/新建文件夹/LVGL/examples/libs/ffmpeg/lv_example_ffmpeg_2.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/examples/libs/ffmpeg/%.o: ../src/新建文件夹/LVGL/examples/libs/ffmpeg/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
