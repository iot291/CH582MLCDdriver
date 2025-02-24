// #include "lcdfont.h"
#include "user.h"
#include <stdio.h>


u8 imagestatue = 1;
u8 gesturesta = 0;
u16 time = 0;

// lv_ui guider_ui;
__HIGH_CODE
int user() {


    // lv_example_ui();
    // lv_obj_t* btn = lv_btn_create(lv_scr_act());
    // lv_obj_set_pos(btn, 200, 100);
    // lv_obj_set_size(btn, 120, 50);
    // lv_obj_t* label = lv_label_create(btn);
    // lv_label_set_text(label, "Button");
    // lv_obj_center(label);
    /*Create an Arc*/
    // lv_obj_t *arc = lv_arc_create (lv_scr_act());
    // lv_obj_set_size (arc, 150, 150);
    // lv_arc_set_rotation (arc, 135);
    // lv_arc_set_bg_angles (arc, 0, 270);
    // lv_arc_set_value (arc, 40);
    // lv_obj_center (arc);


    // ��ʼ����ʾ���������������ʾ��Ӳ���ӿ����ã�
    // LCD_Init();  // �滻Ϊ�����ʾ������ʼ������

    // ��ʼ������������
    // CST816S_Init();  // �滻Ϊ��Ĵ�������ʼ������

    // lv_init();
    // lv_port_disp_init();
    // lv_port_indev_init();

    // lv_obj_t *btn = lv_btn_create (lv_scr_act());
    // lv_obj_set_pos (btn, 200, 100);
    // lv_obj_set_size (btn, 120, 50);
    // lv_obj_t *label = lv_label_create (btn);
    // lv_label_set_text (label, "Button");
    // lv_obj_center (label);

    /*Create an Arc*/
    // lv_obj_t *arc = lv_arc_create (lv_scr_act());
    // lv_obj_set_size (arc, 150, 150);
    // lv_arc_set_rotation (arc, 135);
    // lv_arc_set_bg_angles (arc, 0, 270);
    // lv_arc_set_value (arc, 40);
    // lv_obj_center (arc);
    // int x, y;

    // create_fps_ui();

    ui_init();

    // setup_ui(&guider_ui);
    // events_init(&guider_ui);
    while (1) {

        lv_task_handler();
        lv_timer_handler();
        // u16 *coords = CST816S_GetXY();
        // x = coords[0];
        // y = coords[1];
        // LCD_ShowIntNum (50, 50, x, 3, BLACK, WHITE, 16);
        // LCD_ShowIntNum (100, 50, y, 3, BLACK, WHITE, 16);
        DelayMs (1);
    }


    // u8 i, j;
    // float t = 0;


    // while (1) {
    //     /*
    //     ���������240*240��ͼƬ
    //     */

    //  // �о�԰���Ĳ��Դ���
    //  //  LCD_ShowChinese (30, 40, "�о�԰����", RED, WHITE, 32, 0);
    //  //  LCD_ShowString (32, 80, "LCD_Diameter:", RED, WHITE, 16, 0);
    //  //  LCD_ShowIntNum (134, 80, LCD_W, 3, RED, WHITE, 16);
    //  //  LCD_ShowString (32, 100, "Increaseing Nun:", RED, WHITE, 16, 0);
    //  //  LCD_ShowFloatNum1 (160, 100, t, 4, RED, WHITE, 16);
    //  //  t += 0.11;
    //  //  for (j = 0; j < 6; j++) {
    //  //      for (i = 0; i < 6; i++) {
    //  //          LCD_ShowPicture (40 * i, 0 + j * 40, 40, 40, gImage_1);
    //  //      }
    //  //  }


    //  /*��������*/
    //  // CST816S_test();

    //  /*����*/
    //  // show_biaopan();

    //  /*����������һ����ƶ�*/
    //  // show_qie();

    //  /*ƽ���л�ͼƬ*/
    //  // show_changepic();

    //  /*��������ƽ���л�ͼƬ 100*100*/
    //  // show_key_changepic_100();

    //  /*��������ƽ���л�ͼƬ 240*240*/
    //  // show_key_changepic_240();

    //  /* ���ƿ���ƽ���л�ͼƬ 100*100 */
    //  // show_gesture_changepic_100();
    // }

    return 0;
}

void TMR0_TimerInit (uint32_t t) {
    R32_TMR0_CNT_END = t;
    R8_TMR0_CTRL_MOD = RB_TMR_ALL_CLEAR;
    R8_TMR0_CTRL_MOD = RB_TMR_COUNT_EN;
}

void Timer_0_Init (void) {
    TMR0_ITCfg (ENABLE, TMR0_3_IT_CYC_END);  // �����ж�
    PFIC_EnableIRQ (TMR0_IRQn);
    TMR0_TimerInit (800);                    // ���ö�ʱʱ�� 1ms 4mhz����4000 1ms, 60mhz 600 1ms
    PFIC->IPRIOR[16] = 0xff;
}

__INTERRUPT

__HIGH_CODE
void TMR0_IRQHandler (void)  // TMR0 ��ʱ�ж�
{

    if (TMR0_GetITFlag (TMR0_3_IT_CYC_END)) {
        TMR0_ClearITFlag (TMR0_3_IT_CYC_END);  // ����жϱ�־
    }
    // time++;
    // if (time >= 10) {
    lv_tick_inc (1);
    //  time = 0;
    // }
}

// static lv_obj_t *label_fps;  // ������ʾ֡�ʵı�ǩ
// static uint32_t last_time = 0;  // �ϴθ���ʱ�䣨��λ�����룩
// static uint32_t frame_count = 0;  // ֡��������
// static char fps_str[16];  // ������ʾ FPS ���ַ���

// // ����֡�ʵĺ���
// static void update_fps(void) {
//     uint32_t current_time = lv_tick_get();  // ��ȡ��ǰʱ�䣨���룩

//  frame_count++;

//  // ÿ�����һ��֡��
//  if (current_time - last_time >= 1000) {
//      uint32_t fps = frame_count;  // ��ȡ��ǰ��֡�ʣ�ÿ��֡����
//      snprintf(fps_str, sizeof(fps_str), "FPS: %d", fps);
//      lv_label_set_text(label_fps, fps_str);  // ���±�ǩ����

//  frame_count = 0;  // ����֡��������
//  last_time = current_time;  // ����������ʱ��
// }
// }

// // ��ʱ���ص�����������֡��
// static void fps_task(lv_timer_t * timer) {
//     update_fps();  // ����֡��
// }

// // ����֡�ʲ��� UI
// void create_fps_ui(void) {
//     // ����һ����ǩ��ʾ֡��
//     label_fps = lv_label_create(lv_scr_act());
//     lv_label_set_text(label_fps, "FPS: 0");  // ��ʼ֡��Ϊ 0
//     lv_obj_align(label_fps, LV_ALIGN_CENTER, 0, 0);  // ��ǩ������ʾ

//  // ������ʱ������ÿ 100 �������һ��
//  lv_timer_create(fps_task, 100, NULL);  // ����Ҫ���ݶ������
// }


// void lv_example_ui (void) {
//     /* ����һ����ǩ */
//     lv_obj_t *label = lv_label_create (lv_scr_act());
//     lv_label_set_text (label, "Hello, LVGL!");
//     lv_obj_align (label, LV_ALIGN_CENTER, 0, 0);

//  /* ����һ����ť */
//  lv_obj_t *btn = lv_btn_create (lv_scr_act());
//  lv_obj_align (btn, label, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
//  lv_obj_set_event_cb (btn, btn_event_cb);  // ��ť�¼��ص�����

//  lv_obj_t *btn_label = lv_label_create (btn);
//  lv_label_set_text (btn_label, "Click Me");
// }

// void btn_event_cb (lv_obj_t *btn, lv_event_t event) {
//     if (event == LV_EVENT_CLICKED) {
//         lv_label_set_text (lv_obj_get_child (btn), "Button Clicked!");
//     }
// }

void show_biaopan() {
    LCD_ShowPicture (140, 140, 40, 40, gImage_1);
    LCD_ShowPicture (0, 0, 240, 240, gImage_4);
    LCD_SmoothSlidePic (240, 0, 0, 0, 240, 240, gImage_3, 1);
    LCD_SmoothSlidePic (240, 0, 0, 0, 240, 240, gImage_4, 1);
}

void show_qie() {
    LCD_SmoothSlidePic (0, 0, 200, 200, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (0, 200, 200, 0, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (200, 0, 0, 200, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (100, 0, 100, 200, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (0, 100, 200, 100, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (100, 200, 100, 0, 40, 40, gImage_1, 5);
    LCD_SmoothSlidePic (200, 100, 0, 100, 40, 40, gImage_1, 5);
    LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);
}

void show_changepic() {
    LCD_SmoothChangePic (0, 0, 240, 240, 1, gImage_3, gImage_4, 0);
    LCD_SmoothChangePic (0, 0, 240, 240, 2, gImage_4, gImage_3, 0);
    LCD_SmoothChangePic (0, 0, 240, 240, 3, gImage_3, gImage_5, 0);
    LCD_SmoothChangePic (0, 0, 240, 240, 4, gImage_5, gImage_3, 0);
    DelayMs (1000);
    LCD_Fill (0, 0, 240, 240, WHITE);

    LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_6, gImage_7, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_6, gImage_7, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_6, gImage_7, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_7, gImage_8, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_8, gImage_6, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_6, gImage_8, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_8, gImage_7, 0);
    DelayMs (100);
    LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_7, gImage_6, 0);
    DelayMs (100);
    LCD_Fill (0, 0, 240, 240, BLACK);

    LCD_ShowPicture (0, 0, 240, 240, gImage_3);
    DelayMs (1000);
    LCD_ShowPicture (0, 0, 240, 240, gImage_4);
    DelayMs (1000);
}

void show_key_changepic_100() {
    if (KEY_OK() == 2) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_6, gImage_7, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_7, gImage_8, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_8, gImage_6, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        DelayMs (100);
    }
    if (KEY_OK() == 3) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_6, gImage_8, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_7, gImage_6, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_8, gImage_7, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        DelayMs (100);
    }
    if (KEY_OK() == 1) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_6, gImage_7, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_7, gImage_8, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_8, gImage_6, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        DelayMs (100);
    }
    if (KEY_OK() == 4) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_6, gImage_8, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_7, gImage_6, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_8, gImage_7, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        DelayMs (100);
    }
}

void show_key_changepic_240() {
    if (KEY_OK() == 2) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (0, 0, 240, 240, 1, gImage_3, gImage_4, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (0, 0, 240, 240, 1, gImage_4, gImage_5, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (0, 0, 240, 240, 1, gImage_5, gImage_3, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        DelayMs (240);
    }
    if (KEY_OK() == 3) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (0, 0, 240, 240, 2, gImage_3, gImage_5, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (0, 0, 240, 240, 2, gImage_4, gImage_3, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (0, 0, 240, 240, 2, gImage_5, gImage_4, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        DelayMs (240);
    }
    if (KEY_OK() == 1) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (0, 0, 240, 240, 4, gImage_3, gImage_4, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (0, 0, 240, 240, 4, gImage_4, gImage_5, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (0, 0, 240, 240, 4, gImage_5, gImage_3, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        DelayMs (240);
    }
    if (KEY_OK() == 4) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (0, 0, 240, 240, 3, gImage_3, gImage_5, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (0, 0, 240, 240, 3, gImage_4, gImage_3, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (0, 0, 240, 240, 3, gImage_5, gImage_4, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        DelayMs (240);
    }
}

void show_gesture_changepic_100() {
    u8 gesture = CST816S_GetGesture();
    if (gesture == NONE) {
        gesturesta = 0;
    }
    if (gesture == SWIPE_UP && gesturesta == 0) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_6, gImage_7, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_7, gImage_8, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 1, gImage_8, gImage_6, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        gesturesta = 1;
        DelayMs (100);
    }
    if (gesture == SWIPE_DOWN && gesturesta == 0) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_6, gImage_8, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_7, gImage_6, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 2, gImage_8, gImage_7, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        gesturesta = 1;
        DelayMs (100);
    }
    if (gesture == SWIPE_RIGHT && gesturesta == 0) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_6, gImage_7, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_7, gImage_8, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 4, gImage_8, gImage_6, 0);
        }
        imagestatue++;
        if (imagestatue >= 4) {
            imagestatue = 1;
        }
        gesturesta = 1;
        DelayMs (100);
    }
    if (gesture == SWIPE_LEFT && gesturesta == 0) {
        if (imagestatue == 1) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_6, gImage_8, 0);
        } else if (imagestatue == 2) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_7, gImage_6, 0);
        } else if (imagestatue == 3) {
            LCD_SmoothChangePic (70, 70, 100, 100, 3, gImage_8, gImage_7, 0);
        }
        imagestatue--;
        if (imagestatue <= 0) {
            imagestatue = 3;
        }
        gesturesta = 1;
        DelayMs (100);
    }
    if (gesture == LONG_PRESS && gesturesta == 0) {
        LCD_Fill (70, 70, 170, 170, WHITE);
        // LCD_ShowPicture (0, 0, 240, 240, gImage_9);
        // imagestatue = 0;
        gesturesta = 1;
    }
}