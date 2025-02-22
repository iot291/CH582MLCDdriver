################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_buf.c \
../src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_utils.c 

C_DEPS += \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_buf.d \
./src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_buf.o \
./src/detect/LVGL/src/draw/nxp/vglite/lv_vglite_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/src/draw/nxp/vglite/%.o: ../src/detect/LVGL/src/draw/nxp/vglite/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
