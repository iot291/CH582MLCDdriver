#include "user.h"

/*********************************************************************
 * @fn      main
 *
 * @brief   ������
 *
 * @return  none
 */

__HIGH_CODE
int main() {

    u8 i, j;
    LCD_BLK_Set();
    SetSysClock (CLK_SOURCE_PLL_80MHz);


    // KEY_GPIO_init();  // ������ʼ��
    // LCD_Init();  // LCD��ʼ��
    // CST816S_Init(); //������ʼ��

    lv_init();             // LVGL ��ʼ��
    lv_port_disp_init();   // ע��LVGL����ʾ����
    lv_port_indev_init();  // ע��LVGL�Ĵ����������

    // LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);  // ��䴿ɫ
    // LCD_ShowPicture(0,0,240,240,gImage_9);      //���һ�ű���ͼ

    // while (1) {
    //     LCD_ShowIntNum(50,50,CST816S_GetX(),3,RED,WHITE,16);
    //     LCD_ShowIntNum(80,50,CST816S_GetY(),3,RED,WHITE,16);
    // }


    user();
    // while (1) {


    //     lv_task_handler();
    //     DelayMs (10);
    //     // user();
    // }
}
