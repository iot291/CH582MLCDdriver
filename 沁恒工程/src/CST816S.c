#include "CST816S.h"
#include "CTIIC.h"
#include "user.h"

const u16 POINT_COLOR_TBL[CTP_MAX_TOUCH] = {RED, GREEN};  // 触摸笔颜色
const u16 TPX[] = {0x03, 0x09};                           // 触摸地址

_m_tp_dev tp_dev =
    {
        CST816S_Init,
        CST816S_Scan,
        0,
        0,
        0,
};

// 写数据
__HIGH_CODE
u8 CST816S_WR_DATA (u16 addr, u8 data) {
    u8 reg;
    CTP_IIC_Start();            // IIC起始信号
    CTP_SendByte (CST_WR_CMD);  // 发送写指令
    CTP_WaitAck();
    CTP_SendByte (addr);
    CTP_WaitAck();
    CTP_SendByte (data);  // 写入数据
    CTP_WaitAck();
    CTP_IIC_Stop();       // IIC结束信号
    reg = SUCCESS;
    return reg;
}

// 读数据
__HIGH_CODE
u8 CST816S_RD_DATA (u16 addr, u8 len, u8 *value) {
    u8 reg = 0, i;
    CTP_IIC_Start();
    CTP_SendByte (CST_WR_CMD);  // 发送写指令
    CTP_WaitAck();
    CTP_SendByte (addr);
    CTP_WaitAck();
    CTP_IIC_Start();
    CTP_SendByte (CST_RD_CMD);
    CTP_WaitAck();
    for (i = 0; i < len; i++) {
        if (i == (len - 1)) {
            value[i] = CTP_ReadByte (0x00);
        } else {
            value[i] = CTP_ReadByte (0x01);
        }
    }
    CTP_IIC_Stop();
    reg = SUCCESS;
    return reg;
}

__HIGH_CODE
void CST816S_Init (void) {
    u8 ID;
    CTP_GPIOInit();
    CTP_RES_Clr();
    CTP_INT_Clr();
    DelayMs (50);
    CTP_INT_Set();
    DelayMs (50);
    CTP_RES_Set();
    DelayMs (50);
    CTP_INT_IN();
    DelayMs (20);
    CST816S_RD_DATA (CST816S_ID, 1, &ID);
}

__HIGH_CODE
u8 CST816S_Scan (u8 mode) {
    u8 buf[4];
    u8 i = 0;
    u8 res = 0;
    u8 temp;
    u8 tempsta;

    // 直接实时扫描，移除扫描间隔延时
    CST816S_RD_DATA (GT_ADDR_REG, 1, &mode);

    if (mode & 0x80 && ((mode & 0x0F) < 6)) {
        temp = 0;
        CST816S_WR_DATA (GT_ADDR_REG, temp);  // 清除扫描标记
    }

    if ((mode & 0x0F) && ((mode & 0x0F) < 6))                // 如果检测到触摸点
    {
        temp = 0xFF << (mode & 0x0F);                        // 将触摸点个数转换为1的位数
        tempsta = tp_dev.sta;                                // 保存当前的触摸状态
        tp_dev.sta = (~temp) | TP_PRES_DOWN | TP_CATH_PRES;  // 设置触摸点状态
        tp_dev.x[1] = tp_dev.x[0];                           // 保存上一个触摸点的数据
        tp_dev.y[1] = tp_dev.y[0];

        for (i = 0; i < 2; i++) {
            if (tp_dev.sta & (1 << i))             // 判断触摸点是否有效
            {
                CST816S_RD_DATA (TPX[i], 4, buf);  // 读取触摸数据

                // 根据横屏或竖屏模式转换坐标
                if (USE_HORIZONTAL == 2)  // 横屏
                {
                    tp_dev.y[i] = buf[1];
                    tp_dev.x[i] = buf[3];
                } else if (USE_HORIZONTAL == 0) {
                    tp_dev.x[i] = 240 - buf[1];
                    tp_dev.y[i] = buf[3];
                } else if (USE_HORIZONTAL == 1) {
                    tp_dev.x[i] = buf[1];
                    tp_dev.y[i] = 240 - buf[3];
                } else {
                    tp_dev.y[i] = 240 - buf[1];
                    tp_dev.x[i] = 240 - buf[3];
                }
            }
        }
        res = 1;

        // 校验坐标是否超出范围
        if (tp_dev.x[0] > LCD_W || tp_dev.y[0] > LCD_H) {
            if ((mode & 0x0F) > 1) {
                tp_dev.x[0] = tp_dev.x[1];
                tp_dev.y[0] = tp_dev.y[1];
            } else {
                tp_dev.x[0] = tp_dev.x[1];
                tp_dev.y[0] = tp_dev.y[1];
                mode = 0x80;  // 恢复状态
                tp_dev.sta = tempsta;
            }
        }
    } else {
        if (tp_dev.sta & TP_PRES_DOWN)  // 判断是否有触摸点松开
        {
            tp_dev.sta &= ~(1 << 7);    // 松开标记
            tp_dev.x[0] = 0;
            tp_dev.y[0] = 0;
            tp_dev.sta &= 0xE0;  // 清除有效标记
        } else {
            tp_dev.x[0] = 0;
            tp_dev.y[0] = 0;
            tp_dev.sta &= 0xE0;  // 清除有效标记
        }
    }

    return res;  // 返回扫描结果
}

__HIGH_CODE
void CST816S_test (void) {
    u8 t = 0;
    u16 lastpos[2][2];  // 最后一次的数据
    // LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);
    u16 color = BLACK;
    while (1) {
        tp_dev.scan (0);

        for (t = 0; t < CTP_MAX_TOUCH; t++) {
            if ((tp_dev.sta & (1 << t)))  // 判断是否有点触摸？
            {
                // DelayMs (1);
                if (tp_dev.x[t] < LCD_W && tp_dev.y[t] < LCD_H)  // 在LCD范围内
                {
                    if (lastpos[t][0] == 0XFFFF) {
                        lastpos[t][0] = tp_dev.x[t];
                        lastpos[t][1] = tp_dev.y[t];
                    }

                    /*画线*/
                    // LCD_DrawLine (lastpos[t][0], lastpos[t][1], tp_dev.x[t], tp_dev.y[t],color);

                    /*  图片拖动*/
                    LCD_SmoothSlidePic (lastpos[t][0], lastpos[t][1], tp_dev.x[t], tp_dev.y[t], 40, 40, gImage_1, 0);


                    // LCD_DrawPoint(lastpos[t][0], lastpos[t][1],BLACK);
                    // LCD_ShowPicture (tp_dev.x[t], tp_dev.y[t], 40, 40, gImage_1);
                    // LCD_Fill (tp_dev.x[t] - 10, tp_dev.y[t] - 10, tp_dev.x[t] + 50, tp_dev.y[t] + 50, WHITE);
                    lastpos[t][0] = tp_dev.x[t];
                    lastpos[t][1] = tp_dev.y[t];
                }
            } else {

                lastpos[t][0] = 0XFFFF;
            }
        }
        if (GPIOA_ReadPortPin (GPIO_Pin_0) == 0)  // 判断PA3状态
        {
            LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);
        }
        if (GPIOA_ReadPortPin (GPIO_Pin_1) == 0)  // 判断PA3状态
        {
            LCD_Fill (0, 0, LCD_W, LCD_H, BLACK);
        }

        if (GPIOA_ReadPortPin (GPIO_Pin_2) == 0)  // 判断PA3状态
        {
            color = RED;
        }
        if (GPIOA_ReadPortPin (GPIO_Pin_3) == 0)  // 判断PA3状态
        {
            color = BLUE;
        }

        // DelayMs (1);
    }
}

// 获取手势码
uint8_t CST816S_GetGesture(void) {
    uint8_t gesture = NONE;
    uint8_t gestureData = 0;
    uint8_t fingerNum = 0;

    // 读取触摸点数寄存器
    CST816S_RD_DATA(GT_ADDR_REG, 1, &fingerNum);

    // 如果触摸点数大于等于1，则读取手势码
    if (fingerNum >= 1) {
        // 读取手势寄存器
        CST816S_RD_DATA(GESTURE_REG, 1, &gestureData);

        // 根据读取的手势数据确定手势码
        switch (gestureData) {
            case 0x01:
                gesture = SWIPE_DOWN;
                break;
            case 0x02:
                gesture = SWIPE_UP;
                break;
            case 0x03:
                gesture = SWIPE_LEFT;
                break;
            case 0x04:
                gesture = SWIPE_RIGHT;
                break;
            case 0x05:
                gesture = SINGLE_CLICK;
                break;
            case 0x0B:
                gesture = DOUBLE_CLICK;
                break;
            case 0x0C:
                gesture = LONG_PRESS;
                break;
            default:
                gesture = NONE;
                break;
        }
    }

    return gesture;
}
// __HIGH_CODE
// void CST816S_test(void)
// {
//     u8 t = 0;
//     u16 lastpos[2][2];  // 记录最后一次的坐标
//     LCD_Fill(0, 0, LCD_W, LCD_H, WHITE); // 清空LCD屏幕
//     while (1)
//     {
//         tp_dev.scan(0); // 扫描触摸点
//         for (t = 0; t < CTP_MAX_TOUCH; t++)
//         {
//             if ((tp_dev.sta & (1 << t))) // 判断是否有点触摸
//             {
//                 if (tp_dev.x[t] < LCD_W && tp_dev.y[t] < LCD_H) // 在LCD范围内
//                 {
//                     LCD_DrawPoint(tp_dev.x[t], tp_dev.y[t], POINT_COLOR_TBL[t]); // 绘制点
//                 }
//             }
//         }
//     }
// }
