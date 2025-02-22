################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c 

C_DEPS += \
./src/LVGL/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.d 

OBJS += \
./src/LVGL/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/draw/stm32_dma2d/%.o: ../src/LVGL/src/draw/stm32_dma2d/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
