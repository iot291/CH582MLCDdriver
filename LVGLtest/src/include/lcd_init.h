#ifndef __LCD_INIT_H
#define __LCD_INIT_H

// #include "sys.h"
#include "config.h"

#define USE_HORIZONTAL 0  //设置横屏或者竖屏显示 0或1为竖屏 2或3为横屏


#define LCD_W 240
#define LCD_H 240



// #define DATAOUT(x) (*(volatile uint32_t*)0x400010C8) = (x)
#define DATAOUT(x) R8_PB_OUT_0 = x //数据输出

// #define DATAOUT(x) R32_PB_OUT = (R32_PB_OUT & 0xFFFFFF00) | (x & 0xFF) //数据输出
#define DATAIN     (R8_PB_PIN_0)   //数据输入

// #define LCD_DATA_READ()    GPIOB->IDR   // 读取数据总线

#define LCD_RES_Set() GPIOA_SetBits(GPIO_Pin_11)    // 复位     PA11
#define LCD_CS_Set()  GPIOA_SetBits(GPIO_Pin_12)    // 片选端口 PA12
#define LCD_DC_Set()  GPIOA_SetBits(GPIO_Pin_10)    // 数据/命令 PA10
#define LCD_WR_Set()  GPIOA_SetBits(GPIO_Pin_14)    // 写数据   PA14
#define LCD_RD_Set()  GPIOA_SetBits(GPIO_Pin_15)    // 读数据   PA15
#define LCD_BLK_Set() GPIOB_ResetBits(GPIO_Pin_16)    // 背光控制 PB16

#define LCD_RES_Clr() GPIOA_ResetBits(GPIO_Pin_11)  // 复位     PA11  
#define LCD_CS_Clr()  GPIOA_ResetBits(GPIO_Pin_12)  // 片选端口 PA12
#define LCD_DC_Clr()  GPIOA_ResetBits(GPIO_Pin_10)  // 数据/命令 PA10
#define LCD_WR_Clr()  GPIOA_ResetBits(GPIO_Pin_14)  // 写数据   PA14
#define LCD_RD_Clr()  GPIOA_ResetBits(GPIO_Pin_15)  // 读数据   PA15
#define LCD_BLK_Clr() GPIOB_SetBits(GPIO_Pin_16)  // 背光控制 PB16




void LCD_GPIO_Init(void);//初始化GPIO
void LCD_Writ_Bus(u8 dat);//模拟SPI时序
void LCD_WR_DATA8(u8 dat);//写入一个字节
void LCD_WR_DATA(u16 dat);//写入两个字节
void LCD_WR_REG(u8 dat);//写入一个指令
void LCD_Address_Set(u16 x1,u16 y1,u16 x2,u16 y2);//设置坐标函数
void LCD_Init(void);//LCD初始化
#endif




