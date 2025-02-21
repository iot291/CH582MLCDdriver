#include "lcd_init.h"
#include "lcd.h"

// #include "delay.h"


void LCD_GPIO_Init (void) {
    // ����GPIOB������Ϊ�������
    GPIOB_ModeCfg (GPIO_Pin_0, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_0
    GPIOB_ModeCfg (GPIO_Pin_1, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_1
    GPIOB_ModeCfg (GPIO_Pin_2, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_2
    GPIOB_ModeCfg (GPIO_Pin_3, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_3
    GPIOB_ModeCfg (GPIO_Pin_4, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_4
    GPIOB_ModeCfg (GPIO_Pin_5, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_5
    GPIOB_ModeCfg (GPIO_Pin_6, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_6
    GPIOB_ModeCfg (GPIO_Pin_7, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_7

    // ��ʼ��GPIOB����Ϊ�ߵ�ƽ
    GPIOB_SetBits (GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7);

    // ����GPIOA������Ϊ�������
    GPIOA_ModeCfg (GPIO_Pin_10, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_10
    GPIOA_ModeCfg (GPIO_Pin_11, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_11
    GPIOA_ModeCfg (GPIO_Pin_12, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_12
    // GPIOA_ModeCfg(GPIO_Pin_13, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_13
    GPIOA_ModeCfg (GPIO_Pin_14, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_14
    GPIOA_ModeCfg (GPIO_Pin_15, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_15
    GPIOB_ModeCfg (GPIO_Pin_16, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_16

    // ��ʼ��GPIOA����Ϊ�ߵ�ƽ
    GPIOA_SetBits (GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_14 | GPIO_Pin_15);
    LCD_CS_Clr();
}

/******************************************************************************
      ����˵����LCD��������д�뺯��
      ������ݣ�dat  Ҫд��Ĵ�������
      ����ֵ��  ��
******************************************************************************/
__HIGH_CODE
void LCD_Writ_Bus (u8 dat) {
    DATAOUT (dat);
    LCD_WR_Clr();
    LCD_WR_Set();
}

/******************************************************************************
      ����˵����LCDд������
      ������ݣ�dat д�������
      ����ֵ��  ��
******************************************************************************/
__HIGH_CODE
void LCD_WR_DATA8 (u8 dat) {
    LCD_DC_Set();
    LCD_Writ_Bus (dat);
}

/******************************************************************************
      ����˵����LCDд������
      ������ݣ�dat д�������
      ����ֵ��  ��
******************************************************************************/
__HIGH_CODE
void LCD_WR_DATA (u16 dat) {
    LCD_DC_Set();
    LCD_Writ_Bus (dat >> 8);
    LCD_Writ_Bus (dat);
}

/******************************************************************************
      ����˵����LCDд������
      ������ݣ�dat д�������
      ����ֵ��  ��
******************************************************************************/
__HIGH_CODE
void LCD_WR_REG (u8 dat) {
    LCD_DC_Clr();  // д����
    LCD_Writ_Bus (dat);
    LCD_DC_Set();  // д����
}

/******************************************************************************
      ����˵����������ʼ�ͽ�����ַ
      ������ݣ�x1,x2 �����е���ʼ�ͽ�����ַ
                y1,y2 �����е���ʼ�ͽ�����ַ
      ����ֵ��  ��
******************************************************************************/
__HIGH_CODE
void LCD_Address_Set (u16 x1, u16 y1, u16 x2, u16 y2) {
    LCD_WR_REG (0x2a);  // �е�ַ����
    LCD_WR_DATA (x1);
    LCD_WR_DATA (x2);
    LCD_WR_REG (0x2b);  // �е�ַ����
    LCD_WR_DATA (y1);
    LCD_WR_DATA (y2);
    LCD_WR_REG (0x2c);  // ������д
}

void LCD_Init (void) {
    LCD_GPIO_Init();  // ��ʼ��GPIO

    LCD_RES_Clr();    // ��λ
    DelayMs (20);     // ��ʱ100ms
    LCD_RES_Set();
    DelayMs (20);     // ��ʱ100ms

    LCD_BLK_Set();    // �򿪱���
    DelayMs (100);

    /* �ܶ�Ĵ������ʶ���ҪInter_commandΪ��(Ĭ��Ϊ��)�����ȷ�FE��EF����Inter_commandΪ�� */
    LCD_WR_REG (0xEF);    // ������չָ�
    LCD_WR_REG (0xEB);    // ������չָ�����
    LCD_WR_DATA8 (0x14);  // ������չָ�����

    LCD_WR_REG (0xFE);    // ʹ����չָ�
    LCD_WR_REG (0xEF);    // ������չָ�

    LCD_WR_REG (0xEB);    // ������չָ�����
    LCD_WR_DATA8 (0x14);  // ������չָ�����

    LCD_WR_REG (0x84);
    LCD_WR_DATA8 (0x40);
    LCD_WR_REG (0x85);
    LCD_WR_DATA8 (0xFF);
    LCD_WR_REG (0x86);
    LCD_WR_DATA8 (0xFF);
    LCD_WR_REG (0x87);
    LCD_WR_DATA8 (0xFF);
    LCD_WR_REG (0x88);
    LCD_WR_DATA8 (0x0A);
    LCD_WR_REG (0x89);
    LCD_WR_DATA8 (0x21);
    LCD_WR_REG (0x8A);
    LCD_WR_DATA8 (0x00);
    LCD_WR_REG (0x8B);
    LCD_WR_DATA8 (0x80);
    LCD_WR_REG (0x8C);
    LCD_WR_DATA8 (0x01);
    LCD_WR_REG (0x8D);
    LCD_WR_DATA8 (0x01);
    LCD_WR_REG (0x8E);
    LCD_WR_DATA8 (0xFF);
    LCD_WR_REG (0x8F);
    LCD_WR_DATA8 (0xFF);


    /* ����GS SS
     * ��һ������Ϊ0,�ڶ���������Ч
     * GS bit6 0:G1->G32 1:G32->G1
     * SS bit5 0:S1->S360 1:S360->S1
     */
    LCD_WR_REG (0xB6);  // ��Ļ�������� ɨ�跽��
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x20);


    /**
     * Memory Access Control
     * 7     6    5       4           3      2           1  0
     * MY    MX   MV      ML          BGR    MH          0  0
     * Y��ת X��ת XY����  ��ֱˢ�·��� 0-RGB  ˮƽˢ�·���
     *                                1-BGR
     */
    LCD_WR_REG (0x36);  // �ڴ�ɨ�跽��
    if (USE_HORIZONTAL == 0)
        LCD_WR_DATA8 (0x08);
    else if (USE_HORIZONTAL == 1)
        LCD_WR_DATA8 (0xC8);
    else if (USE_HORIZONTAL == 2)
        LCD_WR_DATA8 (0x68);
    else
        LCD_WR_DATA8 (0xA8);


    /* Pixel Format Set
     *7 ��6 5 4��   3 ��2 1 0��
     *  DPI           DBI
     *  RGB�ӿ�       MCU�ӿ�
     *  101 16λ      011 12λ
     *  110 18λ      101 16λ
     *                110 18λ
     */
    LCD_WR_REG (0x3A);  // ��ɫģʽѡ��
    LCD_WR_DATA8 (0x55);

    // �̶��ڴ˴�
    LCD_WR_REG (0x90);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_REG (0xBD);
    LCD_WR_DATA8 (0x06);
    LCD_WR_REG (0xBC);
    LCD_WR_DATA8 (0x00);
    LCD_WR_REG (0xFF);
    LCD_WR_DATA8 (0x60);
    LCD_WR_DATA8 (0x01);
    LCD_WR_DATA8 (0x04);

    /* ��Դ���� */
    LCD_WR_REG (0xC3);  // vbp
    LCD_WR_DATA8 (0x13);
    LCD_WR_REG (0xC4);  // vbn
    LCD_WR_DATA8 (0x13);
    LCD_WR_REG (0xC9);  // vrh
    LCD_WR_DATA8 (0x22);

    // �̶��ڴ˴�
    LCD_WR_REG (0xBE);
    LCD_WR_DATA8 (0x11);
    LCD_WR_REG (0xE1);
    LCD_WR_DATA8 (0x10);
    LCD_WR_DATA8 (0x0E);
    LCD_WR_REG (0xDF);
    LCD_WR_DATA8 (0x21);
    LCD_WR_DATA8 (0x0c);
    LCD_WR_DATA8 (0x02);


    // ٤������ GAMMA1 2 3 4����
    LCD_WR_REG (0xF0);//Ĭ��ֵ 80 03 08 06 05 2B
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x09);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x26);
    LCD_WR_DATA8 (0x2A);

    LCD_WR_REG (0xF1);//Ĭ��ֵ 41 97 98 13 17 CD
    LCD_WR_DATA8 (0x43);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x72);
    LCD_WR_DATA8 (0x36);
    LCD_WR_DATA8 (0x37);
    LCD_WR_DATA8 (0x6F);


    LCD_WR_REG (0xF2);//Ĭ��ֵ 40 03 08 0B 08 2E
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x09);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x26);
    LCD_WR_DATA8 (0x2A);

    LCD_WR_REG (0xF3);//Ĭ��ֵ 3F 98 B4 14 18 CD
    LCD_WR_DATA8 (0x43);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x72);
    LCD_WR_DATA8 (0x36);
    LCD_WR_DATA8 (0x37);
    LCD_WR_DATA8 (0x6F);

    // �̶��ڴ˴�
    LCD_WR_REG (0xED);
    LCD_WR_DATA8 (0x1B);
    LCD_WR_DATA8 (0x0B);

    LCD_WR_REG (0xAE);
    LCD_WR_DATA8 (0x77);

    LCD_WR_REG (0xCD);
    LCD_WR_DATA8 (0x63);

    LCD_WR_REG (0x70);
    LCD_WR_DATA8 (0x07);
    LCD_WR_DATA8 (0x07);
    LCD_WR_DATA8 (0x04);
    LCD_WR_DATA8 (0x0E);
    LCD_WR_DATA8 (0x0F);
    LCD_WR_DATA8 (0x09);
    LCD_WR_DATA8 (0x07);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x03);

    LCD_WR_REG (0xEB);  // ֡������
    LCD_WR_DATA8 (0x14);


    LCD_WR_REG (0x62);
    LCD_WR_DATA8 (0x18);
    LCD_WR_DATA8 (0x0D);
    LCD_WR_DATA8 (0x71);
    LCD_WR_DATA8 (0xED);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x18);
    LCD_WR_DATA8 (0x0F);
    LCD_WR_DATA8 (0x71);
    LCD_WR_DATA8 (0xEF);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x70);

    LCD_WR_REG (0x63);
    LCD_WR_DATA8 (0x18);
    LCD_WR_DATA8 (0x11);
    LCD_WR_DATA8 (0x71);
    LCD_WR_DATA8 (0xF1);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x18);
    LCD_WR_DATA8 (0x13);
    LCD_WR_DATA8 (0x71);
    LCD_WR_DATA8 (0xF3);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x70);

    LCD_WR_REG (0x64);
    LCD_WR_DATA8 (0x28);
    LCD_WR_DATA8 (0x29);
    LCD_WR_DATA8 (0xF1);
    LCD_WR_DATA8 (0x01);
    LCD_WR_DATA8 (0xF1);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x07);

    LCD_WR_REG (0x66);
    LCD_WR_DATA8 (0x3C);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0xCD);
    LCD_WR_DATA8 (0x67);
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x10);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x00);

    LCD_WR_REG (0x67);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x3C);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x01);
    LCD_WR_DATA8 (0x54);
    LCD_WR_DATA8 (0x10);
    LCD_WR_DATA8 (0x32);
    LCD_WR_DATA8 (0x98);

    LCD_WR_REG (0x74);
    LCD_WR_DATA8 (0x10);
    LCD_WR_DATA8 (0x85);
    LCD_WR_DATA8 (0x80);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x4E);
    LCD_WR_DATA8 (0x00);

    LCD_WR_REG (0x98);
    LCD_WR_DATA8 (0x3e);
    LCD_WR_DATA8 (0x07);



    LCD_WR_REG (0x35);  // ����
    LCD_WR_REG (0x21);


    LCD_WR_REG (0x11);  // �˳�����ģʽ
    DelayMs (120);

    LCD_WR_REG (0x29);  // ��ʼ��ʾ
    DelayMs (20);
}
