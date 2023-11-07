#include "main.h"




void W25Q128_Enable();
void W25Q128_Disable();
void spi2_Transmit_one_byte(uint8_t _dataTx);
uint8_t spi2_Receive_one_byte();
void W25Q128_Write_Enable();
void W25Q128_Write_Disable();
void W25Q128_Wait_Busy();
void Erase_one_Sector(uint32_t Address);
void Erase_Write_data_Sector(uint32_t Address,uint32_t Write_data_NUM);
void Erase_W25Q128_Chip(void);
void Read_W25Q128_data(uint8_t* pBuffer,uint32_t ReadAddr,uint16_t NumByteToRead);
void Write_Word(uint16_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void Write_Page(uint16_t* pBuffer,uint32_t WriteAddr,uint16_t NumByteToWrite);
void read_W25Q128_ID();
