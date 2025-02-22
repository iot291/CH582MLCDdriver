################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/新建文件夹/LVGL/src/misc/lv_anim.c \
../src/新建文件夹/LVGL/src/misc/lv_anim_timeline.c \
../src/新建文件夹/LVGL/src/misc/lv_area.c \
../src/新建文件夹/LVGL/src/misc/lv_async.c \
../src/新建文件夹/LVGL/src/misc/lv_bidi.c \
../src/新建文件夹/LVGL/src/misc/lv_color.c \
../src/新建文件夹/LVGL/src/misc/lv_fs.c \
../src/新建文件夹/LVGL/src/misc/lv_gc.c \
../src/新建文件夹/LVGL/src/misc/lv_ll.c \
../src/新建文件夹/LVGL/src/misc/lv_log.c \
../src/新建文件夹/LVGL/src/misc/lv_lru.c \
../src/新建文件夹/LVGL/src/misc/lv_math.c \
../src/新建文件夹/LVGL/src/misc/lv_mem.c \
../src/新建文件夹/LVGL/src/misc/lv_printf.c \
../src/新建文件夹/LVGL/src/misc/lv_style.c \
../src/新建文件夹/LVGL/src/misc/lv_style_gen.c \
../src/新建文件夹/LVGL/src/misc/lv_templ.c \
../src/新建文件夹/LVGL/src/misc/lv_timer.c \
../src/新建文件夹/LVGL/src/misc/lv_tlsf.c \
../src/新建文件夹/LVGL/src/misc/lv_txt.c \
../src/新建文件夹/LVGL/src/misc/lv_txt_ap.c \
../src/新建文件夹/LVGL/src/misc/lv_utils.c 

C_DEPS += \
./src/新建文件夹/LVGL/src/misc/lv_anim.d \
./src/新建文件夹/LVGL/src/misc/lv_anim_timeline.d \
./src/新建文件夹/LVGL/src/misc/lv_area.d \
./src/新建文件夹/LVGL/src/misc/lv_async.d \
./src/新建文件夹/LVGL/src/misc/lv_bidi.d \
./src/新建文件夹/LVGL/src/misc/lv_color.d \
./src/新建文件夹/LVGL/src/misc/lv_fs.d \
./src/新建文件夹/LVGL/src/misc/lv_gc.d \
./src/新建文件夹/LVGL/src/misc/lv_ll.d \
./src/新建文件夹/LVGL/src/misc/lv_log.d \
./src/新建文件夹/LVGL/src/misc/lv_lru.d \
./src/新建文件夹/LVGL/src/misc/lv_math.d \
./src/新建文件夹/LVGL/src/misc/lv_mem.d \
./src/新建文件夹/LVGL/src/misc/lv_printf.d \
./src/新建文件夹/LVGL/src/misc/lv_style.d \
./src/新建文件夹/LVGL/src/misc/lv_style_gen.d \
./src/新建文件夹/LVGL/src/misc/lv_templ.d \
./src/新建文件夹/LVGL/src/misc/lv_timer.d \
./src/新建文件夹/LVGL/src/misc/lv_tlsf.d \
./src/新建文件夹/LVGL/src/misc/lv_txt.d \
./src/新建文件夹/LVGL/src/misc/lv_txt_ap.d \
./src/新建文件夹/LVGL/src/misc/lv_utils.d 

OBJS += \
./src/新建文件夹/LVGL/src/misc/lv_anim.o \
./src/新建文件夹/LVGL/src/misc/lv_anim_timeline.o \
./src/新建文件夹/LVGL/src/misc/lv_area.o \
./src/新建文件夹/LVGL/src/misc/lv_async.o \
./src/新建文件夹/LVGL/src/misc/lv_bidi.o \
./src/新建文件夹/LVGL/src/misc/lv_color.o \
./src/新建文件夹/LVGL/src/misc/lv_fs.o \
./src/新建文件夹/LVGL/src/misc/lv_gc.o \
./src/新建文件夹/LVGL/src/misc/lv_ll.o \
./src/新建文件夹/LVGL/src/misc/lv_log.o \
./src/新建文件夹/LVGL/src/misc/lv_lru.o \
./src/新建文件夹/LVGL/src/misc/lv_math.o \
./src/新建文件夹/LVGL/src/misc/lv_mem.o \
./src/新建文件夹/LVGL/src/misc/lv_printf.o \
./src/新建文件夹/LVGL/src/misc/lv_style.o \
./src/新建文件夹/LVGL/src/misc/lv_style_gen.o \
./src/新建文件夹/LVGL/src/misc/lv_templ.o \
./src/新建文件夹/LVGL/src/misc/lv_timer.o \
./src/新建文件夹/LVGL/src/misc/lv_tlsf.o \
./src/新建文件夹/LVGL/src/misc/lv_txt.o \
./src/新建文件夹/LVGL/src/misc/lv_txt_ap.o \
./src/新建文件夹/LVGL/src/misc/lv_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/新建文件夹/LVGL/src/misc/%.o: ../src/新建文件夹/LVGL/src/misc/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/工作/1.28IPS电容触摸技术资料/新建文件夹/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
