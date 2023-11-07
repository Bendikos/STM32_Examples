/****************************
 * use to ST7567A 128*32 dot LCD.
 * progranmmer: Jex Mo
 * Version: V1.0
 * date: 2020-12-4
 * URL: https://github.com/mworkfun/ST7567A_128X32DOT_LCD
 ****************************/

#ifndef __LCD128_32_io_H
#define __LCD128_32_io_H

#include "main.h"
#include "i2c.h"
#include <string.h>

// LCD is driven by ST7567A IC.
// Define instructions on page 37 of the ST7567A data sheet.
//#define	displayON   0xaf  //display on.
//#define	displayOFF  0xae  //display off.
//#define	startLine   0x40  //Set display start line.
//#define	restart     0xe2  //restart command.
//#define	seg         0xa0  //Set scan direction of SEG, SEG = 1-0-1-0-0-0-0-MX;
//	//MX=1-->reverse direction, MX=0-->normal direction.
//#define	INV_normal  0xa6  //normal display.
//#define	AP_normal   0xa4  //normal display.
//#define	BS          0xa3  //select bias setting, bias = 1-0-1-0-0-0-1-BS, BS(0)=1/9,  BS(1)=1/7(at 1/65 duty).
//#define	com         0xc8  //Set output direction of COM, COM = 1-1-0-0-MY-X-X-X;
//	//MY=1-->reverse direction, MY=0-->normal direction.
//#define	powerCon1   0x2c  //Controls the built-in power circuits;
//#define	powerCon2   0x2e  //Define instructions on page 43 of the ST7567A data sheet.
//#define	powerCon3   0x2f
//	/********Adjust display brightness********/
//#define	regRatio    0x22  //Controls the regulation ratio of the built-in regulator;
//	//Define instructions on page 43 of the ST7567A data sheet.
//#define	EV1         0x81  //Define instructions on page 44 of the ST7567A data sheet.
//#define	EV2         0x30
//	/**********entension command set**********/
//#define	exit_EC     0xfe  //exit extension command set.
//#define	enter_EC    0xff  //enter extension command set.
//#define	DSM_ON      0x72  //display setting mode on.
//#define	DSM_OFF     0x70  //display setting mode off.
//#define	DT          0xd6  //set the display duty, DT=33.
//#define	BA          0x90  //BA=1/9, selects LCD bias ratio for the internal voltage follower to drive the LCD.
//	//This command has priority over the Bias Select (BS).
//#define	FR          0x9d  //specifies the frame rate for duty.
//#define	RMW         0xe0  //Read-modify-Write command on page 42 of ST7567A datasheet.
//#define	END         0xee
//#define	Address     0x7e
//

//Address of LCD device.

void WriteByte_command(uint8_t cmd);
void WriteByte_dat(uint8_t dat);
void Lcd_Clear();
void Lcd_Init();
void Lcd_Cursor(uint8_t y, uint8_t x);
void Lcd_WriteFont(uint8_t num);
void Lcd_Display(char *str);
void Lcd_DisplayNum(uint16_t num,int Length);             //4 lines of 18 number each.
void I2CWrite(uint8_t dat);
void Lcd_DisplayPicture();                //display picture.


#endif
