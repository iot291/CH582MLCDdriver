// #include "lcdfont.h"
#include "user.h"
#include <stdio.h>


u8 imagestatue = 1;
u8 gesturesta = 0;

static void touchpad_read(lv_indev_drv_t * indev_drv, lv_indev_data_t * data)
{
    // �ڴ�ʵ�ִ�������ȡ����
    // ������Ĵ������������ص�����Ϊ x, y �Ͱ���״̬Ϊ state
    int x, y;
    bool touched = CST816S_TouchStatus();  // �滻Ϊ��Ĵ�����ȡ����
    u16 *coords = CST816S_GetXY();
    x = coords[0];
    y = coords[1];
    if (touched) {
        data->point.x = x;
        data->point.y = y;
        data->state = LV_INDEV_STATE_PRESSED;
    } else {
        data->state = LV_INDEV_STATE_RELEASED;
    }
}

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
    LCD_Init();  // �滻Ϊ�����ʾ������ʼ������

    // ��ʼ������������
    CST816S_Init();  // �滻Ϊ��Ĵ�������ʼ������

    // ��ʼ�������������豸����
    lv_indev_drv_t indev_drv;
    lv_indev_drv_init (&indev_drv);                             // ��ʼ�������豸����
    indev_drv.type = LV_INDEV_TYPE_POINTER;                     // ��������һ��ָ���豸
    indev_drv.read_cb = touchpad_read;                          // ���ô�����ȡ�ص�����
    lv_indev_t *my_indev = lv_indev_drv_register (&indev_drv);  // ע�������豸


    // ����һ���򵥵İ�ť
    lv_obj_t *btn = lv_btn_create (lv_scr_act());
    lv_obj_align (btn, LV_ALIGN_CENTER, 50, 50);

    // ������ť��ǩ
    lv_obj_t *label = lv_label_create (btn);
    lv_label_set_text (label, "Touch Me");


    while (1) {

        // u16 *coords = CST816S_GetXY();
        // u16 x = coords[0];
        // u16 y = coords[1];
        // LCD_ShowIntNum (50, 50, x, 3, RED, WHITE, 16);
        // LCD_ShowIntNum (80, 50, y, 3, RED, WHITE, 16);
        // LCD_ShowIntNum (50, 50, CST816S_TouchStatus(), 3, RED, WHITE, 16);


        // CST816S_test();
        // lv_timer_handler();
        lv_task_handler();
        // screen_benchmark();
        DelayMs (10);
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

// void lv_example_ui (void) {
//     /* ����һ����ǩ */
//     lv_obj_t *label = lv_label_create (lv_scr_act(), NULL);
//     lv_label_set_text (label, "Hello, LVGL!");
//     lv_obj_align (label, NULL, LV_ALIGN_CENTER, 0, 0);

//  /* ����һ����ť */
//  lv_obj_t *btn = lv_btn_create (lv_scr_act(), NULL);
//  lv_obj_align (btn, label, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
//  lv_obj_set_event_cb (btn, btn_event_cb);  // ��ť�¼��ص�����

//  lv_obj_t *btn_label = lv_label_create (btn, NULL);
//  lv_label_set_text (btn_label, "Click Me");
// }

// void btn_event_cb (lv_obj_t *btn, lv_event_t event) {
//     if (event == LV_EVENT_CLICKED) {
//         lv_label_set_text (lv_obj_get_child (btn, NULL), "Button Clicked!");
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