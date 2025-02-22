// #include "lcdfont.h"
#include "user.h"
#include <stdio.h>


u8 imagestatue = 1;
u8 gesturesta = 0;

__HIGH_CODE
int user() {

    u8 i, j;
    float t = 0;


    while (1) {
        /*
        最多存放三张240*240的图片
        */

        // 中景园给的测试代码
        //  LCD_ShowChinese (30, 40, "中景园电子", RED, WHITE, 32, 0);
        //  LCD_ShowString (32, 80, "LCD_Diameter:", RED, WHITE, 16, 0);
        //  LCD_ShowIntNum (134, 80, LCD_W, 3, RED, WHITE, 16);
        //  LCD_ShowString (32, 100, "Increaseing Nun:", RED, WHITE, 16, 0);
        //  LCD_ShowFloatNum1 (160, 100, t, 4, RED, WHITE, 16);
        //  t += 0.11;
        //  for (j = 0; j < 6; j++) {
        //      for (i = 0; i < 6; i++) {
        //          LCD_ShowPicture (40 * i, 0 + j * 40, 40, 40, gImage_1);
        //      }
        //  }


        /*触摸测试*/
        // CST816S_test();

        /*表盘*/
        // show_biaopan();

        /*企鹅上下左右滑动移动*/
        // show_qie();

        /*平滑切换图片*/
        // show_changepic();

        /*按键控制平滑切换图片 100*100*/
        // show_key_changepic_100();

        /*按键控制平滑切换图片 240*240*/
        // show_key_changepic_240();

        /* 手势控制平滑切换图片 100*100 */
        show_gesture_changepic_100();
    }

    return 0;
}

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