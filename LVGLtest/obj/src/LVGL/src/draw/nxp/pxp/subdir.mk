################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/draw/nxp/pxp/lv_draw_pxp.c \
../src/LVGL/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
../src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
../src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c 

C_DEPS += \
./src/LVGL/src/draw/nxp/pxp/lv_draw_pxp.d \
./src/LVGL/src/draw/nxp/pxp/lv_draw_pxp_blend.d \
./src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d \
./src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d 

OBJS += \
./src/LVGL/src/draw/nxp/pxp/lv_draw_pxp.o \
./src/LVGL/src/draw/nxp/pxp/lv_draw_pxp_blend.o \
./src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o \
./src/LVGL/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/draw/nxp/pxp/%.o: ../src/LVGL/src/draw/nxp/pxp/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/UI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
