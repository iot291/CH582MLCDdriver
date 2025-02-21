
#include "config.h"
#include "key.h"
void KEY_GPIO_init() {
    // �������ų�ʼ��
    GPIOA_ModeCfg (GPIO_Pin_0, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_1, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_2, GPIO_ModeIN_PU);
    GPIOA_ModeCfg (GPIO_Pin_3, GPIO_ModeIN_PU);
}

int KEY_OK(void) {
    uint8_t KEY_Num = 0;

    // �������
    if (GPIOA_ReadPortPin(GPIO_Pin_3) == 0) {
        KEY_Num = 1;  // ����
    } else if (GPIOA_ReadPortPin(GPIO_Pin_2) == 0) {
        KEY_Num = 2;  // ����
    } else if (GPIOA_ReadPortPin(GPIO_Pin_1) == 0) {
        KEY_Num = 3;  // ����
    } else if (GPIOA_ReadPortPin(GPIO_Pin_0) == 0) {
        KEY_Num = 4;  // ����
    } else {
        KEY_Num = 0;  // û�а���
    }

    return KEY_Num;
}
