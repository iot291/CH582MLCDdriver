################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/detect/LVGL/src/misc/lv_anim.c \
../src/detect/LVGL/src/misc/lv_anim_timeline.c \
../src/detect/LVGL/src/misc/lv_area.c \
../src/detect/LVGL/src/misc/lv_async.c \
../src/detect/LVGL/src/misc/lv_bidi.c \
../src/detect/LVGL/src/misc/lv_color.c \
../src/detect/LVGL/src/misc/lv_fs.c \
../src/detect/LVGL/src/misc/lv_gc.c \
../src/detect/LVGL/src/misc/lv_ll.c \
../src/detect/LVGL/src/misc/lv_log.c \
../src/detect/LVGL/src/misc/lv_lru.c \
../src/detect/LVGL/src/misc/lv_math.c \
../src/detect/LVGL/src/misc/lv_mem.c \
../src/detect/LVGL/src/misc/lv_printf.c \
../src/detect/LVGL/src/misc/lv_style.c \
../src/detect/LVGL/src/misc/lv_style_gen.c \
../src/detect/LVGL/src/misc/lv_templ.c \
../src/detect/LVGL/src/misc/lv_timer.c \
../src/detect/LVGL/src/misc/lv_tlsf.c \
../src/detect/LVGL/src/misc/lv_txt.c \
../src/detect/LVGL/src/misc/lv_txt_ap.c \
../src/detect/LVGL/src/misc/lv_utils.c 

C_DEPS += \
./src/detect/LVGL/src/misc/lv_anim.d \
./src/detect/LVGL/src/misc/lv_anim_timeline.d \
./src/detect/LVGL/src/misc/lv_area.d \
./src/detect/LVGL/src/misc/lv_async.d \
./src/detect/LVGL/src/misc/lv_bidi.d \
./src/detect/LVGL/src/misc/lv_color.d \
./src/detect/LVGL/src/misc/lv_fs.d \
./src/detect/LVGL/src/misc/lv_gc.d \
./src/detect/LVGL/src/misc/lv_ll.d \
./src/detect/LVGL/src/misc/lv_log.d \
./src/detect/LVGL/src/misc/lv_lru.d \
./src/detect/LVGL/src/misc/lv_math.d \
./src/detect/LVGL/src/misc/lv_mem.d \
./src/detect/LVGL/src/misc/lv_printf.d \
./src/detect/LVGL/src/misc/lv_style.d \
./src/detect/LVGL/src/misc/lv_style_gen.d \
./src/detect/LVGL/src/misc/lv_templ.d \
./src/detect/LVGL/src/misc/lv_timer.d \
./src/detect/LVGL/src/misc/lv_tlsf.d \
./src/detect/LVGL/src/misc/lv_txt.d \
./src/detect/LVGL/src/misc/lv_txt_ap.d \
./src/detect/LVGL/src/misc/lv_utils.d 

OBJS += \
./src/detect/LVGL/src/misc/lv_anim.o \
./src/detect/LVGL/src/misc/lv_anim_timeline.o \
./src/detect/LVGL/src/misc/lv_area.o \
./src/detect/LVGL/src/misc/lv_async.o \
./src/detect/LVGL/src/misc/lv_bidi.o \
./src/detect/LVGL/src/misc/lv_color.o \
./src/detect/LVGL/src/misc/lv_fs.o \
./src/detect/LVGL/src/misc/lv_gc.o \
./src/detect/LVGL/src/misc/lv_ll.o \
./src/detect/LVGL/src/misc/lv_log.o \
./src/detect/LVGL/src/misc/lv_lru.o \
./src/detect/LVGL/src/misc/lv_math.o \
./src/detect/LVGL/src/misc/lv_mem.o \
./src/detect/LVGL/src/misc/lv_printf.o \
./src/detect/LVGL/src/misc/lv_style.o \
./src/detect/LVGL/src/misc/lv_style_gen.o \
./src/detect/LVGL/src/misc/lv_templ.o \
./src/detect/LVGL/src/misc/lv_timer.o \
./src/detect/LVGL/src/misc/lv_tlsf.o \
./src/detect/LVGL/src/misc/lv_txt.o \
./src/detect/LVGL/src/misc/lv_txt_ap.o \
./src/detect/LVGL/src/misc/lv_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/detect/LVGL/src/misc/%.o: ../src/detect/LVGL/src/misc/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
