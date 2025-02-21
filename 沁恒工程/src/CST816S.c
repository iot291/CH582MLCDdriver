#include "CST816S.h"
#include "CTIIC.h"
#include "user.h"

const u16 POINT_COLOR_TBL[CTP_MAX_TOUCH] = {RED, GREEN};  // ��������ɫ
const u16 TPX[] = {0x03, 0x09};                           // ������ַ

_m_tp_dev tp_dev =
    {
        CST816S_Init,
        CST816S_Scan,
        0,
        0,
        0,
};

// д����
__HIGH_CODE
u8 CST816S_WR_DATA (u16 addr, u8 data) {
    u8 reg;
    CTP_IIC_Start();            // IIC��ʼ�ź�
    CTP_SendByte (CST_WR_CMD);  // ����дָ��
    CTP_WaitAck();
    CTP_SendByte (addr);
    CTP_WaitAck();
    CTP_SendByte (data);  // д������
    CTP_WaitAck();
    CTP_IIC_Stop();       // IIC�����ź�
    reg = SUCCESS;
    return reg;
}

// ������
__HIGH_CODE
u8 CST816S_RD_DATA (u16 addr, u8 len, u8 *value) {
    u8 reg = 0, i;
    CTP_IIC_Start();
    CTP_SendByte (CST_WR_CMD);  // ����дָ��
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

    // ֱ��ʵʱɨ�裬�Ƴ�ɨ������ʱ
    CST816S_RD_DATA (GT_ADDR_REG, 1, &mode);

    if (mode & 0x80 && ((mode & 0x0F) < 6)) {
        temp = 0;
        CST816S_WR_DATA (GT_ADDR_REG, temp);  // ���ɨ����
    }

    if ((mode & 0x0F) && ((mode & 0x0F) < 6))                // �����⵽������
    {
        temp = 0xFF << (mode & 0x0F);                        // �����������ת��Ϊ1��λ��
        tempsta = tp_dev.sta;                                // ���浱ǰ�Ĵ���״̬
        tp_dev.sta = (~temp) | TP_PRES_DOWN | TP_CATH_PRES;  // ���ô�����״̬
        tp_dev.x[1] = tp_dev.x[0];                           // ������һ�������������
        tp_dev.y[1] = tp_dev.y[0];

        for (i = 0; i < 2; i++) {
            if (tp_dev.sta & (1 << i))             // �жϴ������Ƿ���Ч
            {
                CST816S_RD_DATA (TPX[i], 4, buf);  // ��ȡ��������

                // ���ݺ���������ģʽת������
                if (USE_HORIZONTAL == 2)  // ����
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

        // У�������Ƿ񳬳���Χ
        if (tp_dev.x[0] > LCD_W || tp_dev.y[0] > LCD_H) {
            if ((mode & 0x0F) > 1) {
                tp_dev.x[0] = tp_dev.x[1];
                tp_dev.y[0] = tp_dev.y[1];
            } else {
                tp_dev.x[0] = tp_dev.x[1];
                tp_dev.y[0] = tp_dev.y[1];
                mode = 0x80;  // �ָ�״̬
                tp_dev.sta = tempsta;
            }
        }
    } else {
        if (tp_dev.sta & TP_PRES_DOWN)  // �ж��Ƿ��д������ɿ�
        {
            tp_dev.sta &= ~(1 << 7);    // �ɿ����
            tp_dev.x[0] = 0;
            tp_dev.y[0] = 0;
            tp_dev.sta &= 0xE0;  // �����Ч���
        } else {
            tp_dev.x[0] = 0;
            tp_dev.y[0] = 0;
            tp_dev.sta &= 0xE0;  // �����Ч���
        }
    }

    return res;  // ����ɨ����
}

__HIGH_CODE
void CST816S_test (void) {
    u8 t = 0;
    u16 lastpos[2][2];  // ���һ�ε�����
    // LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);
    u16 color = BLACK;
    while (1) {
        tp_dev.scan (0);

        for (t = 0; t < CTP_MAX_TOUCH; t++) {
            if ((tp_dev.sta & (1 << t)))  // �ж��Ƿ��е㴥����
            {
                // DelayMs (1);
                if (tp_dev.x[t] < LCD_W && tp_dev.y[t] < LCD_H)  // ��LCD��Χ��
                {
                    if (lastpos[t][0] == 0XFFFF) {
                        lastpos[t][0] = tp_dev.x[t];
                        lastpos[t][1] = tp_dev.y[t];
                    }

                    /*����*/
                    // LCD_DrawLine (lastpos[t][0], lastpos[t][1], tp_dev.x[t], tp_dev.y[t],color);

                    /*  ͼƬ�϶�*/
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
        if (GPIOA_ReadPortPin (GPIO_Pin_0) == 0)  // �ж�PA3״̬
        {
            LCD_Fill (0, 0, LCD_W, LCD_H, WHITE);
        }
        if (GPIOA_ReadPortPin (GPIO_Pin_1) == 0)  // �ж�PA3״̬
        {
            LCD_Fill (0, 0, LCD_W, LCD_H, BLACK);
        }

        if (GPIOA_ReadPortPin (GPIO_Pin_2) == 0)  // �ж�PA3״̬
        {
            color = RED;
        }
        if (GPIOA_ReadPortPin (GPIO_Pin_3) == 0)  // �ж�PA3״̬
        {
            color = BLUE;
        }

        // DelayMs (1);
    }
}

// ��ȡ������
uint8_t CST816S_GetGesture(void) {
    uint8_t gesture = NONE;
    uint8_t gestureData = 0;
    uint8_t fingerNum = 0;

    // ��ȡ���������Ĵ���
    CST816S_RD_DATA(GT_ADDR_REG, 1, &fingerNum);

    // ��������������ڵ���1�����ȡ������
    if (fingerNum >= 1) {
        // ��ȡ���ƼĴ���
        CST816S_RD_DATA(GESTURE_REG, 1, &gestureData);

        // ���ݶ�ȡ����������ȷ��������
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
//     u16 lastpos[2][2];  // ��¼���һ�ε�����
//     LCD_Fill(0, 0, LCD_W, LCD_H, WHITE); // ���LCD��Ļ
//     while (1)
//     {
//         tp_dev.scan(0); // ɨ�败����
//         for (t = 0; t < CTP_MAX_TOUCH; t++)
//         {
//             if ((tp_dev.sta & (1 << t))) // �ж��Ƿ��е㴥��
//             {
//                 if (tp_dev.x[t] < LCD_W && tp_dev.y[t] < LCD_H) // ��LCD��Χ��
//                 {
//                     LCD_DrawPoint(tp_dev.x[t], tp_dev.y[t], POINT_COLOR_TBL[t]); // ���Ƶ�
//                 }
//             }
//         }
//     }
// }
