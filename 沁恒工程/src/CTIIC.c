#include "CTIIC.h"
#include "config.h"

__HIGH_CODE
void CTP_SDA_IN (void) {
    GPIOB_ModeCfg (GPIO_Pin_12, GPIO_ModeIN_PU);  // 上拉输入
    GPIOB_ResetBits (GPIO_Pin_12);                // 可选：将SDA设置为高电平（根据需要）
}

__HIGH_CODE
void CTP_SDA_OUT (void) {
    GPIOB_ModeCfg (GPIO_Pin_12, GPIO_ModeOut_PP_20mA);  // 推挽输出，20mA电流驱动
    GPIOB_SetBits (GPIO_Pin_12);                        // 设置SDA为高电平
}

__HIGH_CODE
void CTP_GPIOInit (void) {
    GPIOB_ModeCfg (GPIO_Pin_8, GPIO_ModeOut_PP_20mA);
    GPIOB_SetBits (GPIO_Pin_8);

    GPIOB_ModeCfg (GPIO_Pin_9, GPIO_ModeOut_PP_20mA);
    GPIOB_SetBits (GPIO_Pin_9);

    GPIOB_ModeCfg (GPIO_Pin_13, GPIO_ModeOut_PP_20mA);
    GPIOB_ModeCfg (GPIO_Pin_12, GPIO_ModeOut_PP_20mA);
    GPIOB_SetBits (GPIO_Pin_12 | GPIO_Pin_13);  // 设置GPIOB_Pin_0和GPIOB_Pin_1为高电平
}

__HIGH_CODE
void CTP_INT_IN (void) {
    GPIOB_ModeCfg (GPIO_Pin_8, GPIO_ModeIN_PU);  // 上拉输入
    GPIOB_ResetBits (GPIO_Pin_8);                // 可选：将INT引脚设置为低电平（根据需要）
}

__HIGH_CODE
void CTP_IIC_Start (void) {
    CTP_SDA_OUT();
    CTP_SDA_Set();
    CTP_SCL_Set();
    DelayUs(5);  // DelayMs(10);
    CTP_SDA_Clr();
    DelayUs(5);  // DelayMs(10);
    CTP_SCL_Clr();
}

__HIGH_CODE
void CTP_IIC_Stop (void) {
    CTP_SDA_OUT();
    CTP_SCL_Clr();
    CTP_SDA_Clr();
    DelayUs(5);//DelayMs(10);
    CTP_SCL_Set();
    CTP_SDA_Set();
}

__HIGH_CODE
u8 CTP_WaitAck (void) {
    u8 ms = 0;
    CTP_SDA_IN();
    CTP_SDA_Set();
    CTP_SCL_Set();
    DelayUs(5);//DelayMs(10);
    while (CTP_ReadSDA) {
        ms++;
        if (ms > 250) {
            CTP_IIC_Stop();
            return 1;
        }
    }
    CTP_SCL_Clr();
    return 0;
}

__HIGH_CODE
void CTP_IICAck (void) {
    CTP_SCL_Clr();
    CTP_SDA_OUT();
    DelayUs(5);//DelayMs(5);
    CTP_SDA_Clr();
    DelayUs(5);//DelayMs(5);
    CTP_SCL_Set();
    DelayUs(5);//DelayMs(5);
    CTP_SCL_Clr();
}

__HIGH_CODE
void CTP_IICNack (void) {
    CTP_SCL_Clr();
    CTP_SDA_OUT();
    DelayUs(5);//DelayMs(5);
    CTP_SDA_Set();
    DelayUs(5);//DelayMs(5);
    CTP_SCL_Set();
    DelayUs(5);//DelayMs(5);
    CTP_SCL_Clr();
}

__HIGH_CODE
void CTP_SendByte (u8 dat) {
    u8 i;
    CTP_SDA_OUT();
    CTP_SCL_Clr();
    for (i = 0; i < 8; i++) {
        //  CT_IIC_SDA=(dat&0x80)>>7;
        if ((dat & 0x80) >> 7) {
            CTP_SDA_Set();
        } else {
            CTP_SDA_Clr();
        }
        dat <<= 1;
        CTP_SCL_Set();
        DelayUs(5);;//DelayMs(5);
        CTP_SCL_Clr();
        DelayUs(5);//DelayMs(5);
    }
}

__HIGH_CODE
u8 CTP_ReadByte (u8 ack) {
    u8 i, dat;
    CTP_SDA_IN();
    for (i = 0; i < 8; i++) {
        CTP_SCL_Clr();
        DelayUs(5);//DelayMs(5);
        CTP_SCL_Set();
        dat <<= 1;
        if (CTP_ReadSDA)
            dat++;
    }
    if (!ack) {
        CTP_IICNack();
    } else {
        CTP_IICAck();
    }
    return dat;
}
