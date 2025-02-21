#ifndef __LCD_INIT_H
#define __LCD_INIT_H

// #include "sys.h"
#include "config.h"

#define USE_HORIZONTAL 0  //���ú�������������ʾ 0��1Ϊ���� 2��3Ϊ����


#define LCD_W 240
#define LCD_H 240



// #define DATAOUT(x) (*(volatile uint32_t*)0x400010C8) = (x)
#define DATAOUT(x) R8_PB_OUT_0 = x //�������

// #define DATAOUT(x) R32_PB_OUT = (R32_PB_OUT & 0xFFFFFF00) | (x & 0xFF) //�������
#define DATAIN     (R8_PB_PIN_0)   //��������

// #define LCD_DATA_READ()    GPIOB->IDR   // ��ȡ��������

#define LCD_RES_Set() GPIOA_SetBits(GPIO_Pin_11)    // ��λ     PA11
#define LCD_CS_Set()  GPIOA_SetBits(GPIO_Pin_12)    // Ƭѡ�˿� PA12
#define LCD_DC_Set()  GPIOA_SetBits(GPIO_Pin_10)    // ����/���� PA10
#define LCD_WR_Set()  GPIOA_SetBits(GPIO_Pin_14)    // д����   PA14
#define LCD_RD_Set()  GPIOA_SetBits(GPIO_Pin_15)    // ������   PA15
#define LCD_BLK_Set() GPIOB_ResetBits(GPIO_Pin_16)    // ������� PB16

#define LCD_RES_Clr() GPIOA_ResetBits(GPIO_Pin_11)  // ��λ     PA11  
#define LCD_CS_Clr()  GPIOA_ResetBits(GPIO_Pin_12)  // Ƭѡ�˿� PA12
#define LCD_DC_Clr()  GPIOA_ResetBits(GPIO_Pin_10)  // ����/���� PA10
#define LCD_WR_Clr()  GPIOA_ResetBits(GPIO_Pin_14)  // д����   PA14
#define LCD_RD_Clr()  GPIOA_ResetBits(GPIO_Pin_15)  // ������   PA15
#define LCD_BLK_Clr() GPIOB_SetBits(GPIO_Pin_16)  // ������� PB16




void LCD_GPIO_Init(void);//��ʼ��GPIO
void LCD_Writ_Bus(u8 dat);//ģ��SPIʱ��
void LCD_WR_DATA8(u8 dat);//д��һ���ֽ�
void LCD_WR_DATA(u16 dat);//д�������ֽ�
void LCD_WR_REG(u8 dat);//д��һ��ָ��
void LCD_Address_Set(u16 x1,u16 y1,u16 x2,u16 y2);//�������꺯��
void LCD_Init(void);//LCD��ʼ��
#endif




