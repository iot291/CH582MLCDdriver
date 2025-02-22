#include "CONFIG.h"

#include "app_i2c.h"

void IIC_Init (void) {
    R32_PB_DIR &= (~(3 << 20));
    R32_PB_PU &= (~(3 << 20));
    R32_PB_PD_DRV &= (~(3 << 20));
    SDA_OUT;
    SCL_OUT;
}

/**********发送 start信号*****************/
void send_start (void) {
    RES_SDA;
    RES_SCL;
}

/***********发送ack信号*****************/
void send_ack (void) {
    RES_SDA;
    SET_SCL;
    RES_SCL;
    SET_SDA;
}

/***********发送nack信号*****************/
void send_nack (void) {
    SET_SDA;
    SET_SCL;
    RES_SCL;
    RES_SDA;
}

/**********发送stop信号****************/
void send_stop (void) {
    RES_SDA;
    SET_SCL;
    SET_SDA;
}

/***********发送一个字节****************/
unsigned char i2c_send_onebity (unsigned char number) {
    unsigned char i;
    unsigned char temp;
    temp = number;

    for (i = 0; i < 8; i++) {
        if (temp & 0x80) {
            SET_SDA;
        } else {
            RES_SDA;
        }
        SET_SCL;
        RES_SCL;
        temp <<= 1;
    }
    SET_SDA;
    SET_SCL;
    if (GET_SDA) {
        temp = 0;
    } else {
        temp = 1;
    }
    RES_SCL;
    return temp;
}

/**********接收一个字节****************/
unsigned char i2c_receive_onebity (void) {
    unsigned char i, temp = 0;
    SDA_IN;
    for (i = 0; i < 8; i++) {
        temp <<= 1;
        SET_SCL;
        if (GET_SDA) {
            temp |= 1;
        }
        RES_SCL;
    }
    SDA_OUT;
    return temp;
}

/**********发送***************/
unsigned char i2c_tran (unsigned char address, unsigned char number, unsigned char size) {
    unsigned char i;
    send_start();
    i2c_send_onebity (address);
    for (i = 0; i < size; i++) {
        if (!(i2c_send_onebity (number + i))) {
            send_stop();
            return 0;
        }
    }
    send_stop();
    return 1;
}

/**********接收***************/
void i2c_rece (unsigned char address, unsigned char *number, unsigned char size) {
    unsigned char i;
    send_start();
    i2c_send_onebity (address | 1);
    SET_SDA;
    for (i = 0; i < size; i++) {
        *(number + i) = i2c_receive_onebity();
        if (i != (size - 1)) {
            send_ack();
        }
    }
    send_nack();
    send_stop();
}
