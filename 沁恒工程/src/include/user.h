#ifndef INCLUDE_USER_H_
#define INCLUDE_USER_H_

#include "config.h"
#include "CST816S.h"
#include "CTIIC.h"
#include "lcd_init.h"
#include "lcd.h"
#include "key.h"
#include "pic.h"

#include <stdio.h>

int user();

void show_biaopan();
void show_qie();
void show_changepic();
void show_key_changepic_100();
void show_key_changepic_240();
void show_gesture_changepic_100();

#endif