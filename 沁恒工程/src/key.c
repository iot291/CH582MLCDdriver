
#include "config.h"
#include "key.h"
void KEY_GPIO_init() {
    // 按键引脚初始化
    GPIOA_ModeCfg (GPIO_Pin_0, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_1, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_2, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_3, GPIO_ModeIN_PU);
}

int KEY_OK(void) {
    uint8_t KEY_Num = 0;

    // 按键检测
    if (GPIOA_ReadPortPin(GPIO_Pin_3) == 0) {
        KEY_Num = 1;  // 按下
    } else if (GPIOA_ReadPortPin(GPIO_Pin_2) == 0) {
        KEY_Num = 2;  // 按下
    } else if (GPIOA_ReadPortPin(GPIO_Pin_1) == 0) {
        KEY_Num = 3;  // 按下
    } else if (GPIOA_ReadPortPin(GPIO_Pin_0) == 0) {
        KEY_Num = 4;  // 按下
    } else {
        KEY_Num = 0;  // 没有按下
    }

    return KEY_Num;
}
