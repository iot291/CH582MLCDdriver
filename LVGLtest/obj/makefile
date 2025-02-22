################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/UI/subdir.mk
-include src/LVGL/src/widgets/subdir.mk
-include src/LVGL/src/misc/subdir.mk
-include src/LVGL/src/hal/subdir.mk
-include src/LVGL/src/font/subdir.mk
-include src/LVGL/src/extra/widgets/win/subdir.mk
-include src/LVGL/src/extra/widgets/tileview/subdir.mk
-include src/LVGL/src/extra/widgets/tabview/subdir.mk
-include src/LVGL/src/extra/widgets/spinner/subdir.mk
-include src/LVGL/src/extra/widgets/spinbox/subdir.mk
-include src/LVGL/src/extra/widgets/span/subdir.mk
-include src/LVGL/src/extra/widgets/msgbox/subdir.mk
-include src/LVGL/src/extra/widgets/meter/subdir.mk
-include src/LVGL/src/extra/widgets/menu/subdir.mk
-include src/LVGL/src/extra/widgets/list/subdir.mk
-include src/LVGL/src/extra/widgets/led/subdir.mk
-include src/LVGL/src/extra/widgets/keyboard/subdir.mk
-include src/LVGL/src/extra/widgets/imgbtn/subdir.mk
-include src/LVGL/src/extra/widgets/colorwheel/subdir.mk
-include src/LVGL/src/extra/widgets/chart/subdir.mk
-include src/LVGL/src/extra/widgets/calendar/subdir.mk
-include src/LVGL/src/extra/widgets/animimg/subdir.mk
-include src/LVGL/src/extra/themes/mono/subdir.mk
-include src/LVGL/src/extra/themes/default/subdir.mk
-include src/LVGL/src/extra/themes/basic/subdir.mk
-include src/LVGL/src/extra/others/snapshot/subdir.mk
-include src/LVGL/src/extra/others/msg/subdir.mk
-include src/LVGL/src/extra/others/monkey/subdir.mk
-include src/LVGL/src/extra/others/imgfont/subdir.mk
-include src/LVGL/src/extra/others/ime/subdir.mk
-include src/LVGL/src/extra/others/gridnav/subdir.mk
-include src/LVGL/src/extra/others/fragment/subdir.mk
-include src/LVGL/src/extra/libs/tiny_ttf/subdir.mk
-include src/LVGL/src/extra/libs/sjpg/subdir.mk
-include src/LVGL/src/extra/libs/rlottie/subdir.mk
-include src/LVGL/src/extra/libs/qrcode/subdir.mk
-include src/LVGL/src/extra/libs/png/subdir.mk
-include src/LVGL/src/extra/libs/gif/subdir.mk
-include src/LVGL/src/extra/libs/fsdrv/subdir.mk
-include src/LVGL/src/extra/libs/freetype/subdir.mk
-include src/LVGL/src/extra/libs/ffmpeg/subdir.mk
-include src/LVGL/src/extra/libs/bmp/subdir.mk
-include src/LVGL/src/extra/layouts/grid/subdir.mk
-include src/LVGL/src/extra/layouts/flex/subdir.mk
-include src/LVGL/src/extra/subdir.mk
-include src/LVGL/src/draw/swm341_dma2d/subdir.mk
-include src/LVGL/src/draw/sw/subdir.mk
-include src/LVGL/src/draw/stm32_dma2d/subdir.mk
-include src/LVGL/src/draw/sdl/subdir.mk
-include src/LVGL/src/draw/renesas/subdir.mk
-include src/LVGL/src/draw/nxp/vglite/subdir.mk
-include src/LVGL/src/draw/nxp/pxp/subdir.mk
-include src/LVGL/src/draw/arm2d/subdir.mk
-include src/LVGL/src/draw/subdir.mk
-include src/LVGL/src/core/subdir.mk
-include src/LVGL/examples/porting/subdir.mk
-include src/subdir.mk
-include StdPeriphDriver/subdir.mk
-include Startup/subdir.mk
-include RVMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
CH582M.hex \

SECONDARY_LIST += \
CH582M.lst \

SECONDARY_SIZE += \
CH582M.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: CH582M.elf secondary-outputs

# Tool invocations
CH582M.elf: $(OBJS) $(USER_OBJS)
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -T "c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest" -L"c:\Users\ql\Desktop\工作\1.28IPS电容触摸技术资料\新建文件夹\g\LVGLtest\StdPeriphDriver" -Xlinker --print-memory-usage -Wl,-Map,"CH582M.map" --specs=nano.specs --specs=nosys.specs -o "CH582M.elf" $(OBJS) $(USER_OBJS) $(LIBS)
CH582M.hex: CH582M.elf
	@	riscv-none-embed-objcopy -O ihex "CH582M.elf" "CH582M.hex"
CH582M.lst: CH582M.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "CH582M.elf" > "CH582M.lst"
CH582M.siz: CH582M.elf
	riscv-none-embed-size --format=berkeley "CH582M.elf"

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(S_DEPS)$(S_UPPER_DEPS)$(ASM_DEPS)$(ASM_UPPER_DEPS)$(C_DEPS) CH582M.elf

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets