#include "lcd_init.h"
#include "lcd.h"

// #include "delay.h"


void LCD_GPIO_Init (void) {
    // 配置GPIOB的引脚为推挽输出
    GPIOB_ModeCfg (GPIO_Pin_0, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_0
    GPIOB_ModeCfg (GPIO_Pin_1, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_1
    GPIOB_ModeCfg (GPIO_Pin_2, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_2
    GPIOB_ModeCfg (GPIO_Pin_3, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_3
    GPIOB_ModeCfg (GPIO_Pin_4, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_4
    GPIOB_ModeCfg (GPIO_Pin_5, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_5
    GPIOB_ModeCfg (GPIO_Pin_6, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_6
    GPIOB_ModeCfg (GPIO_Pin_7, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_7

    // 初始化GPIOB引脚为高电平
    GPIOB_SetBits (GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7);

    // 配置GPIOA的引脚为推挽输出
    GPIOA_ModeCfg (GPIO_Pin_10, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_10
    GPIOA_ModeCfg (GPIO_Pin_11, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_11
    GPIOA_ModeCfg (GPIO_Pin_12, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_12
    // GPIOA_ModeCfg(GPIO_Pin_13, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_13
    GPIOA_ModeCfg (GPIO_Pin_14, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_14
    GPIOA_ModeCfg (GPIO_Pin_15, GPIO_ModeOut_PP_20mA);  // GPIOA_Pin_15
    GPIOB_ModeCfg (GPIO_Pin_16, GPIO_ModeOut_PP_20mA);  // GPIOB_Pin_16

    // 初始化GPIOA引脚为高电平
    GPIOA_SetBits (GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_14 | GPIO_Pin_15);
    LCD_CS_Clr();
}

/******************************************************************************
      函数说明：LCD串行数据写入函数
      入口数据：dat  要写入的串行数据
      返回值：  无
******************************************************************************/
__HIGH_CODE
void LCD_Writ_Bus (u8 dat) {
    DATAOUT (dat);
    LCD_WR_Clr();
    LCD_WR_Set();
}

/******************************************************************************
      函数说明：LCD写入数据
      入口数据：dat 写入的数据
      返回值：  无
******************************************************************************/
__HIGH_CODE
void LCD_WR_DATA8 (u8 dat) {
    LCD_DC_Set();
    LCD_Writ_Bus (dat);
}

/******************************************************************************
      函数说明：LCD写入数据
      入口数据：dat 写入的数据
      返回值：  无
******************************************************************************/
__HIGH_CODE
void LCD_WR_DATA (u16 dat) {
    LCD_DC_Set();
    LCD_Writ_Bus (dat >> 8);
    LCD_Writ_Bus (dat);
}

/******************************************************************************
      函数说明：LCD写入命令
      入口数据：dat 写入的命令
      返回值：  无
******************************************************************************/
__HIGH_CODE
void LCD_WR_REG (u8 dat) {
    LCD_DC_Clr();  // 写命令
    LCD_Writ_Bus (dat);
    LCD_DC_Set();  // 写数据
}

/******************************************************************************
      函数说明：设置起始和结束地址
      入口数据：x1,x2 设置列的起始和结束地址
                y1,y2 设置行的起始和结束地址
      返回值：  无
******************************************************************************/
__HIGH_CODE
void LCD_Address_Set (u16 x1, u16 y1, u16 x2, u16 y2) {
    LCD_WR_REG (0x2a);  // 列地址设置
    LCD_WR_DATA (x1);
    LCD_WR_DATA (x2);
    LCD_WR_REG (0x2b);  // 行地址设置
    LCD_WR_DATA (y1);
    LCD_WR_DATA (y2);
    LCD_WR_REG (0x2c);  // 储存器写
}

void LCD_Init (void) {
    LCD_GPIO_Init();  // 初始化GPIO

    LCD_RES_Clr();    // 复位
    DelayMs (20);     // 延时100ms
    LCD_RES_Set();
    DelayMs (20);     // 延时100ms

    LCD_BLK_Set();    // 打开背光
    DelayMs (100);

    /* 很多寄存器访问都需要Inter_command为高(默认为低)所以先发FE和EF配置Inter_command为高 */
    LCD_WR_REG (0xEF);    // 激活扩展指令集
    LCD_WR_REG (0xEB);    // 设置扩展指令集参数
    LCD_WR_DATA8 (0x14);  // 配置扩展指令集功能

    LCD_WR_REG (0xFE);    // 使能扩展指令集
    LCD_WR_REG (0xEF);    // 激活扩展指令集

    LCD_WR_REG (0xEB);    // 设置扩展指令集参数
    LCD_WR_DATA8 (0x14);  // 配置扩展指令集功能

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


    /* 设置GS SS
     * 第一个参数为0,第二个参数有效
     * GS bit6 0:G1->G32 1:G32->G1
     * SS bit5 0:S1->S360 1:S360->S1
     */
    LCD_WR_REG (0xB6);  // 屏幕功能配置 扫描方向
    LCD_WR_DATA8 (0x00);
    LCD_WR_DATA8 (0x20);


    /**
     * Memory Access Control
     * 7     6    5       4           3      2           1  0
     * MY    MX   MV      ML          BGR    MH          0  0
     * Y反转 X反转 XY交换  垂直刷新方向 0-RGB  水平刷新方向
     *                                1-BGR
     */
    LCD_WR_REG (0x36);  // 内存扫描方向
    if (USE_HORIZONTAL == 0)
        LCD_WR_DATA8 (0x08);
    else if (USE_HORIZONTAL == 1)
        LCD_WR_DATA8 (0xC8);
    else if (USE_HORIZONTAL == 2)
        LCD_WR_DATA8 (0x68);
    else
        LCD_WR_DATA8 (0xA8);


    /* Pixel Format Set
     *7 【6 5 4】   3 【2 1 0】
     *  DPI           DBI
     *  RGB接口       MCU接口
     *  101 16位      011 12位
     *  110 18位      101 16位
     *                110 18位
     */
    LCD_WR_REG (0x3A);  // 颜色模式选择
    LCD_WR_DATA8 (0x55);

    // 固定在此处
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

    /* 电源控制 */
    LCD_WR_REG (0xC3);  // vbp
    LCD_WR_DATA8 (0x13);
    LCD_WR_REG (0xC4);  // vbn
    LCD_WR_DATA8 (0x13);
    LCD_WR_REG (0xC9);  // vrh
    LCD_WR_DATA8 (0x22);

    // 固定在此处
    LCD_WR_REG (0xBE);
    LCD_WR_DATA8 (0x11);
    LCD_WR_REG (0xE1);
    LCD_WR_DATA8 (0x10);
    LCD_WR_DATA8 (0x0E);
    LCD_WR_REG (0xDF);
    LCD_WR_DATA8 (0x21);
    LCD_WR_DATA8 (0x0c);
    LCD_WR_DATA8 (0x02);


    // 伽马设置 GAMMA1 2 3 4设置
    LCD_WR_REG (0xF0);//默认值 80 03 08 06 05 2B
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x09);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x26);
    LCD_WR_DATA8 (0x2A);

    LCD_WR_REG (0xF1);//默认值 41 97 98 13 17 CD
    LCD_WR_DATA8 (0x43);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x72);
    LCD_WR_DATA8 (0x36);
    LCD_WR_DATA8 (0x37);
    LCD_WR_DATA8 (0x6F);


    LCD_WR_REG (0xF2);//默认值 40 03 08 0B 08 2E
    LCD_WR_DATA8 (0x45);
    LCD_WR_DATA8 (0x09);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x08);
    LCD_WR_DATA8 (0x26);
    LCD_WR_DATA8 (0x2A);

    LCD_WR_REG (0xF3);//默认值 3F 98 B4 14 18 CD
    LCD_WR_DATA8 (0x43);
    LCD_WR_DATA8 (0x70);
    LCD_WR_DATA8 (0x72);
    LCD_WR_DATA8 (0x36);
    LCD_WR_DATA8 (0x37);
    LCD_WR_DATA8 (0x6F);

    // 固定在此处
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

    LCD_WR_REG (0xEB);  // 帧率设置
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



    LCD_WR_REG (0x35);  // 反相
    LCD_WR_REG (0x21);


    LCD_WR_REG (0x11);  // 退出休眠模式
    DelayMs (120);

    LCD_WR_REG (0x29);  // 开始显示
    DelayMs (20);
}
