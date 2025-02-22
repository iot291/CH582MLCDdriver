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


    // KEY_GPIO_init();  // 按键初始化
    // LCD_Init();  // LCD初始化
    // CST816S_Init(); //触摸初始化

    lv_init();             // LVGL 初始化
    lv_port_disp_init();   // 注册LVGL的显示任务
    lv_port_indev_init();  // 注册LVGL的触屏检测任务

    // LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);  // 填充纯色
    // LCD_ShowPicture(0,0,240,240,gImage_9);      //填充一张背景图

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
