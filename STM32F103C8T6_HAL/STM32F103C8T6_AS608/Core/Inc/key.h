#ifndef KEY_H__
#define KEY_H__

#include "stm32f1xx_hal.h"	//链接HAL库
#include "main.h"



#define KEY1	HAL_GPIO_ReadPin(KEY1_GPIO_Port, KEY1_Pin)
#define KEY2	HAL_GPIO_ReadPin(KEY2_GPIO_Port, KEY2_Pin)
#define KEY3	HAL_GPIO_ReadPin(KEY3_GPIO_Port, KEY3_Pin)
#define KEY4	HAL_GPIO_ReadPin(KEY4_GPIO_Port, KEY4_Pin)
#define KEY5	HAL_GPIO_ReadPin(KEY5_GPIO_Port, KEY5_Pin)



uint8_t KEY_Scan(uint8_t mode);











#endif


