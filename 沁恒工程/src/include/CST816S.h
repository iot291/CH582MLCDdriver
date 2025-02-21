#ifndef _CST816S_H_
#define _CST816S_H_

#include "config.h"
#include "lcd_init.h"
#include "CTIIC.h"
#include "lcd.h"

#define CST_WR_CMD 0x2A    // д�����ַ
#define CST_RD_CMD 0x2B    // д���ݵ�ַ

#define TP_PRES_DOWN 0x81  // ����������
#define TP_CATH_PRES 0x40  // �а���������

#define CTP_MAX_TOUCH 2

#define FT_DEVIDE_MODE 0x00  // CST816ģʽ���ƼĴ���
#define GT_ADDR_REG 0x02     // ����״̬�Ĵ���
#define CST816S_ID 0xA7      // CST816SID�Ĵ���


// ����CST816S�Ĵ�����ַ
#define GESTURE_REG 0x01  // ���ƼĴ�����ַ

// ����������
#define NONE 0x00
#define SWIPE_DOWN 0x01
#define SWIPE_UP 0x02
#define SWIPE_LEFT 0x03
#define SWIPE_RIGHT 0x04
#define SINGLE_CLICK 0x05
#define DOUBLE_CLICK 0x0B
#define LONG_PRESS 0x0C


typedef struct
{
    void (*init) (void);   // ����IC��ʼ��
    u8 (*scan) (u8);       // ����ɨ��
    u16 x[CTP_MAX_TOUCH];  //
    u16 y[CTP_MAX_TOUCH];
    u8 sta;                // ����״̬
} _m_tp_dev;

u8 CST816S_WR_DATA (u16 addr, u8 data);
u8 CST816S_RD_DATA (u16 addr, u8 len, u8 *value);
void CST816S_Init (void);
u8 CST816S_Scan (u8 mode);
void CST816S_test (void);


uint8_t CST816S_GetGesture(void);
#endif
