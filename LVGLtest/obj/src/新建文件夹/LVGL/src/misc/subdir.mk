################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/�½��ļ���/LVGL/src/misc/lv_anim.c \
../src/�½��ļ���/LVGL/src/misc/lv_anim_timeline.c \
../src/�½��ļ���/LVGL/src/misc/lv_area.c \
../src/�½��ļ���/LVGL/src/misc/lv_async.c \
../src/�½��ļ���/LVGL/src/misc/lv_bidi.c \
../src/�½��ļ���/LVGL/src/misc/lv_color.c \
../src/�½��ļ���/LVGL/src/misc/lv_fs.c \
../src/�½��ļ���/LVGL/src/misc/lv_gc.c \
../src/�½��ļ���/LVGL/src/misc/lv_ll.c \
../src/�½��ļ���/LVGL/src/misc/lv_log.c \
../src/�½��ļ���/LVGL/src/misc/lv_lru.c \
../src/�½��ļ���/LVGL/src/misc/lv_math.c \
../src/�½��ļ���/LVGL/src/misc/lv_mem.c \
../src/�½��ļ���/LVGL/src/misc/lv_printf.c \
../src/�½��ļ���/LVGL/src/misc/lv_style.c \
../src/�½��ļ���/LVGL/src/misc/lv_style_gen.c \
../src/�½��ļ���/LVGL/src/misc/lv_templ.c \
../src/�½��ļ���/LVGL/src/misc/lv_timer.c \
../src/�½��ļ���/LVGL/src/misc/lv_tlsf.c \
../src/�½��ļ���/LVGL/src/misc/lv_txt.c \
../src/�½��ļ���/LVGL/src/misc/lv_txt_ap.c \
../src/�½��ļ���/LVGL/src/misc/lv_utils.c 

C_DEPS += \
./src/�½��ļ���/LVGL/src/misc/lv_anim.d \
./src/�½��ļ���/LVGL/src/misc/lv_anim_timeline.d \
./src/�½��ļ���/LVGL/src/misc/lv_area.d \
./src/�½��ļ���/LVGL/src/misc/lv_async.d \
./src/�½��ļ���/LVGL/src/misc/lv_bidi.d \
./src/�½��ļ���/LVGL/src/misc/lv_color.d \
./src/�½��ļ���/LVGL/src/misc/lv_fs.d \
./src/�½��ļ���/LVGL/src/misc/lv_gc.d \
./src/�½��ļ���/LVGL/src/misc/lv_ll.d \
./src/�½��ļ���/LVGL/src/misc/lv_log.d \
./src/�½��ļ���/LVGL/src/misc/lv_lru.d \
./src/�½��ļ���/LVGL/src/misc/lv_math.d \
./src/�½��ļ���/LVGL/src/misc/lv_mem.d \
./src/�½��ļ���/LVGL/src/misc/lv_printf.d \
./src/�½��ļ���/LVGL/src/misc/lv_style.d \
./src/�½��ļ���/LVGL/src/misc/lv_style_gen.d \
./src/�½��ļ���/LVGL/src/misc/lv_templ.d \
./src/�½��ļ���/LVGL/src/misc/lv_timer.d \
./src/�½��ļ���/LVGL/src/misc/lv_tlsf.d \
./src/�½��ļ���/LVGL/src/misc/lv_txt.d \
./src/�½��ļ���/LVGL/src/misc/lv_txt_ap.d \
./src/�½��ļ���/LVGL/src/misc/lv_utils.d 

OBJS += \
./src/�½��ļ���/LVGL/src/misc/lv_anim.o \
./src/�½��ļ���/LVGL/src/misc/lv_anim_timeline.o \
./src/�½��ļ���/LVGL/src/misc/lv_area.o \
./src/�½��ļ���/LVGL/src/misc/lv_async.o \
./src/�½��ļ���/LVGL/src/misc/lv_bidi.o \
./src/�½��ļ���/LVGL/src/misc/lv_color.o \
./src/�½��ļ���/LVGL/src/misc/lv_fs.o \
./src/�½��ļ���/LVGL/src/misc/lv_gc.o \
./src/�½��ļ���/LVGL/src/misc/lv_ll.o \
./src/�½��ļ���/LVGL/src/misc/lv_log.o \
./src/�½��ļ���/LVGL/src/misc/lv_lru.o \
./src/�½��ļ���/LVGL/src/misc/lv_math.o \
./src/�½��ļ���/LVGL/src/misc/lv_mem.o \
./src/�½��ļ���/LVGL/src/misc/lv_printf.o \
./src/�½��ļ���/LVGL/src/misc/lv_style.o \
./src/�½��ļ���/LVGL/src/misc/lv_style_gen.o \
./src/�½��ļ���/LVGL/src/misc/lv_templ.o \
./src/�½��ļ���/LVGL/src/misc/lv_timer.o \
./src/�½��ļ���/LVGL/src/misc/lv_tlsf.o \
./src/�½��ļ���/LVGL/src/misc/lv_txt.o \
./src/�½��ļ���/LVGL/src/misc/lv_txt_ap.o \
./src/�½��ļ���/LVGL/src/misc/lv_utils.o 



# Each subdirectory must supply rules for building sources it contributes
src/�½��ļ���/LVGL/src/misc/%.o: ../src/�½��ļ���/LVGL/src/misc/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
