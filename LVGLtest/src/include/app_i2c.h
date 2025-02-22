
#define RES_SDA    R8_PB_OUT_2 &= 0xef
#define SET_SDA    R8_PB_OUT_2 |= 0x10
#define RES_SCL    R8_PB_OUT_2 &= 0xdf
#define SET_SCL    R8_PB_OUT_2 |= 0x20
#define GET_SDA    R8_PB_PIN_2 & 0x10
#define SDA_OUT    R8_PB_DIR_2 |= 0x10;
#define SDA_IN     R8_PB_DIR_2 &= 0xef;
#define SCL_OUT    R8_PB_DIR_2 |= 0x20;

#define Speed_240sps_11bit     0x00
#define Speed_60sps_13bit      0x01
#define Speed_30sps_14bit      0x02
#define Speed_15sps_15bit      0x03


#define PGA_1 0x00
#define PGA_2 0x01
#define PGA_4 0x02
#define PGA_8 0x03


extern unsigned char i2c_tran(unsigned char address,unsigned char number,unsigned char size);
extern void i2c_rece(unsigned char address,unsigned char *number,unsigned char size);
extern void IIC_Init(void);
