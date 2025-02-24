################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LVGL/src/draw/nxp/vglite/lv_draw_vglite.c \
../src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../src/LVGL/src/draw/nxp/vglite/lv_vglite_buf.c \
../src/LVGL/src/draw/nxp/vglite/lv_vglite_utils.c 

C_DEPS += \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite.d \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./src/LVGL/src/draw/nxp/vglite/lv_vglite_buf.d \
./src/LVGL/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite.o \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./src/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./src/LVGL/src/draw/nxp/vglite/lv_vglite_buf.o \
./src/LVGL/src/draw/nxp/vglite/lv_vglite_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/LVGL/src/draw/nxp/vglite/%.o: ../src/LVGL/src/draw/nxp/vglite/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/UI/squareline/screens" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
