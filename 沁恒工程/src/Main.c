#include "user.h"

/*********************************************************************
 * @fn      main
 *
 * @brief   主函数
 *
 * @return  none
 */

__HIGH_CODE
int main() {

    u8 i, j;
    LCD_BLK_Set();
    SetSysClock (CLK_SOURCE_PLL_80MHz);

    
    KEY_GPIO_init();    //按键初始化
    LCD_Init();  // LCD初始化
    CST816S_Init(); //触摸初始化

    LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);    //填充纯色
    // LCD_ShowPicture(0,0,240,240,gImage_9);      //填充一张背景图


    while (1) {
        user();
    }
}
