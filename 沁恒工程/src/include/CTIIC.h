#ifndef _CTIIC_H_
#define _CTIIC_H_

#include "config.h"

#define CTP_SCL_Clr() GPIOB_ResetBits(GPIO_Pin_13)//SCL
#define CTP_SCL_Set() GPIOB_SetBits(GPIO_Pin_13)

#define CTP_SDA_Clr() GPIOB_ResetBits(GPIO_Pin_12)//SDA
#define CTP_SDA_Set() GPIOB_SetBits(GPIO_Pin_12)

#define CTP_INT_Clr() GPIOB_ResetBits(GPIO_Pin_8)//INT
#define CTP_INT_Set() GPIOB_SetBits(GPIO_Pin_8)

#define CTP_RES_Clr() GPIOB_ResetBits(GPIO_Pin_9)//RES
#define CTP_RES_Set() GPIOB_SetBits(GPIO_Pin_9)

#define CTP_ReadSDA   GPIOB_ReadPortPin(GPIO_Pin_12)

void CTP_SDA_IN(void);
void CTP_SDA_OUT(void);
void CTP_GPIOInit(void);
void CTP_IIC_Start(void);
void CTP_IIC_Stop(void);
u8 CTP_WaitAck(void);
void CTP_IICAck(void);
void CTP_IICNack(void);
void CTP_SendByte(u8 dat);
u8 CTP_ReadByte(u8 ack);
void CTP_INT_IN(void);
#define CT_IIC_SDA    GPIOB_SetBits(GPIO_Pin_12) 			//SDA	 


#endif
