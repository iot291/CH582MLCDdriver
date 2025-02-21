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

    
    KEY_GPIO_init();    //������ʼ��
    LCD_Init();  // LCD��ʼ��
    CST816S_Init(); //������ʼ��

    LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);    //��䴿ɫ
    // LCD_ShowPicture(0,0,240,240,gImage_9);      //���һ�ű���ͼ


    while (1) {
        user();
    }
}
