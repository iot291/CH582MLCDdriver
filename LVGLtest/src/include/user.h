#ifndef INCLUDE_USER_H_
#define INCLUDE_USER_H_

#include "config.h"
#include "CST816S.h"
#include "CTIIC.h"
#include "lcd_init.h"
#include "lcd.h"
#include "key.h"
#include "pic.h"
#include "lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"

#include "ui.h"

#include <stdio.h>

int user();


// void lv_example_ui (void);
// void btn_event_cb (lv_obj_t *btn, lv_event_t event);
void screen_benchmark(void);
void create_fps_label(void);

void create_fps_ui (void);




void Timer_0_Init (void);
void TMR0_TimerInit(uint32_t t);


void show_biaopan();
void show_qie();
void show_changepic();
void show_key_changepic_100();
void show_key_changepic_240();
void show_gesture_changepic_100();

#endif