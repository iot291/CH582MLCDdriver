################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/UI/gui_guider/events_init.c \
../src/UI/gui_guider/gui_guider.c \
../src/UI/gui_guider/setup_scr_screen.c \
../src/UI/gui_guider/setup_scr_screen_1.c \
../src/UI/gui_guider/widgets_init.c 

C_DEPS += \
./src/UI/gui_guider/events_init.d \
./src/UI/gui_guider/gui_guider.d \
./src/UI/gui_guider/setup_scr_screen.d \
./src/UI/gui_guider/setup_scr_screen_1.d \
./src/UI/gui_guider/widgets_init.d 

OBJS += \
./src/UI/gui_guider/events_init.o \
./src/UI/gui_guider/gui_guider.o \
./src/UI/gui_guider/setup_scr_screen.o \
./src/UI/gui_guider/setup_scr_screen_1.o \
./src/UI/gui_guider/widgets_init.o 



# Each subdirectory must supply rules for building sources it contributes
src/UI/gui_guider/%.o: ../src/UI/gui_guider/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\StdPeriphDriver\inc" -I"c:\Users\ql\Desktop\����\1.28IPS���ݴ�����������\�½��ļ���\g\LVGLtest\RVMSIS" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/include" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/src" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/LVGL/examples/porting" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/StdPeriphDriver" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/Startup" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/Ld" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/UI/squareline" -I"c:/Users/ql/Desktop/����/1.28IPS���ݴ�����������/�½��ļ���/g/LVGLtest/src/UI/squareline/screens" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
