/**
   lcd128_32_io.c
   lcd128_32 io IIC Control source file
*/

#include "lcd128_32_io.h"
#include "picture.h"
#include <font.h>

int _cursor[2] = {0, 0};
uint8_t CMD_Data1[] = {0xe2, 0xa3, 0xa0, 0xc8, 0x22, 0x81, 0x30, 0x2c, 0x2e, 0x2f};
uint8_t CMD_Data2[] = {0xff, 0x72, 0xfe, 0xd6, 0x90, 0x9d, 0xaf, 0x40};

void  WriteByte_command(uint8_t cmd)    //Write a command to LCD.
{
	HAL_I2C_Mem_Write(&hi2c1, 0x7e, 0x00, I2C_MEMADD_SIZE_8BIT, &cmd, 1, 0x100);
}

void WriteByte_dat(uint8_t dat)
{
	HAL_I2C_Mem_Write(&hi2c1, 0x7e, 0x40, I2C_MEMADD_SIZE_8BIT, &dat, 1, 0x100);
}

void  Lcd_Clear()
{
	uint8_t x, i;
	for (x = 0; x < 4; x++) {
		WriteByte_command(0xb0 + x);   //y, page address y=1-0-1-1-y3-y2-y1-y0, 1-page with 8-rows
		WriteByte_command(0x10);       //x, column address x=0-0-0-0-1-x7-x6-x5-x4
		WriteByte_command(0x00);       //x, column address x=0-0-0-0-0-x3-x2-x1-x0
		for (i = 0; i < 128; i++) {
			WriteByte_dat(0x00);         //row=bit0--bit7
		}
	}
}

void  Lcd_Init()
{

	HAL_Delay(200);
	uint8_t i = 0;
	for (i = 0; i < 10; i++) {
		WriteByte_command(CMD_Data1[i]);
		HAL_Delay(20);
	}
	Lcd_Clear();
	for (i = 0; i < 8; i++) {
		WriteByte_command(CMD_Data2[i]);
		HAL_Delay(20);
	}
}

void  Lcd_Cursor(uint8_t y, uint8_t x)
{
	if (x > 17) {
		x = 17;
	}
	if (y > 3) {
		x = 3;
	}
	_cursor[0] = y;
	_cursor[1] = x;
}

void  WriteFont(uint8_t num)
{
	for (int i = 0; i < 7; i++) {
		WriteByte_dat(*(font_7x8[num] + i));
	}
}

void  Lcd_Display(char *str)
{
	int len = 0;
	int num = 0;
	len = strlen(str);
	WriteByte_command(0xb0 + _cursor[0]);           //y, page address y=1-0-1-1-y3-y2-y1-y0, 1-page with 8-rows
	WriteByte_command(0x10 + _cursor[1] * 7 / 16);  //x, column address x=0-0-0-0-1-x7-x6-x5-x4
	WriteByte_command(0x00 + _cursor[1] * 7 % 16);  //x, column address x=0-0-0-0-0-x3-x2-x1-x0
	for (num = 0; num < len; num++) {
		switch (str[num]) {
			case '0':
				WriteFont(0);
				break;
			case '1':
				WriteFont(1);
				break;
			case '2':
				WriteFont(2);
				break;
			case '3':
				WriteFont(3);
				break;
			case '4':
				WriteFont(4);
				break;
			case '5':
				WriteFont(5);
				break;
			case '6':
				WriteFont(6);
				break;
			case '7':
				WriteFont(7);
				break;
			case '8':
				WriteFont(8);
				break;
			case '9':
				WriteFont(9);
				break;
			case 'a':
				WriteFont(10);
				break;
			case 'b':
				WriteFont(11);
				break;
			case 'c':
				WriteFont(12);
				break;
			case 'd':
				WriteFont(13);
				break;
			case 'e':
				WriteFont(14);
				break;
			case 'f':
				WriteFont(15);
				break;
			case 'g':
				WriteFont(16);
				break;
			case 'h':
				WriteFont(17);
				break;
			case 'i':
				WriteFont(18);
				break;
			case 'j':
				WriteFont(19);
				break;
			case 'k':
				WriteFont(20);
				break;
			case 'l':
				WriteFont(21);
				break;
			case 'm':
				WriteFont(22);
				break;
			case 'n':
				WriteFont(23);
				break;
			case 'o':
				WriteFont(24);
				break;
			case 'p':
				WriteFont(25);
				break;
			case 'q':
				WriteFont(26);
				break;
			case 'r':
				WriteFont(27);
				break;
			case 's':
				WriteFont(28);
				break;
			case 't':
				WriteFont(29);
				break;
			case 'u':
				WriteFont(30);
				break;
			case 'v':
				WriteFont(31);
				break;
			case 'w':
				WriteFont(32);
				break;
			case 'x':
				WriteFont(33);
				break;
			case 'y':
				WriteFont(34);
				break;
			case 'z':
				WriteFont(35);
				break;
			case 'A':
				WriteFont(36);
				break;
			case 'B':
				WriteFont(37);
				break;
			case 'C':
				WriteFont(38);
				break;
			case 'D':
				WriteFont(39);
				break;
			case 'E':
				WriteFont(40);
				break;
			case 'F':
				WriteFont(41);
				break;
			case 'G':
				WriteFont(42);
				break;
			case 'H':
				WriteFont(43);
				break;
			case 'I':
				WriteFont(44);
				break;
			case 'J':
				WriteFont(45);
				break;
			case 'K':
				WriteFont(46);
				break;
			case 'L':
				WriteFont(47);
				break;
			case 'M':
				WriteFont(48);
				break;
			case 'N':
				WriteFont(49);
				break;
			case 'O':
				WriteFont(50);
				break;
			case 'P':
				WriteFont(51);
				break;
			case 'Q':
				WriteFont(52);
				break;
			case 'R':
				WriteFont(53);
				break;
			case 'S':
				WriteFont(54);
				break;
			case 'T':
				WriteFont(55);
				break;
			case 'U':
				WriteFont(56);
				break;
			case 'V':
				WriteFont(57);
				break;
			case 'W':
				WriteFont(58);
				break;
			case 'X':
				WriteFont(59);
				break;
			case 'Y':
				WriteFont(60);
				break;
			case 'Z':
				WriteFont(61);
				break;
			case '!':
				WriteFont(62);
				break;
			case '"':
				WriteFont(63);
				break;
			case '#':
				WriteFont(64);
				break;
			case '$':
				WriteFont(65);
				break;
			case '%':
				WriteFont(66);
				break;
			case '&':
				WriteFont(67);
				break;
			case '\'':
				WriteFont(68);
				break;
			case '(':
				WriteFont(69);
				break;
			case ')':
				WriteFont(70);
				break;
			case '*':
				WriteFont(71);
				break;
			case '+':
				WriteFont(72);
				break;
			case ',':
				WriteFont(73);
				break;
			case '-':
				WriteFont(74);
				break;
			case '/':
				WriteFont(75);
				break;
			case ':':
				WriteFont(76);
				break;
			case ';':
				WriteFont(77);
				break;
			case '<':
				WriteFont(78);
				break;
			case '=':
				WriteFont(79);
				break;
			case '>':
				WriteFont(80);
				break;
			case '?':
				WriteFont(81);
				break;
			case '@':
				WriteFont(82);
				break;
			case '{':
				WriteFont(83);
				break;
			case '|':
				WriteFont(84);
				break;
			case '}':
				WriteFont(85);
				break;
			case '~':
				WriteFont(86);
				break;
			case ' ':
				WriteFont(87);
				break;
			case '.':
				WriteFont(88);
				break;
			case '^':
				WriteFont(89);
				break;
			case '_':
				WriteFont(90);
				break;
			case '`':
				WriteFont(91);
				break;
			case '[':
				WriteFont(92);
				break;
			case '\\':
				WriteFont(93);
				break;
			case ']':
				WriteFont(94);
				break;
			default:
				break;
		}
	}
}


//display number
void  Lcd_DisplayNum(uint16_t number, int Length)
{
	char array[18];
	uint8_t k = 0;
	array[Length] = 0;
	for (k = Length; k > 0; k--) {
		array[k - 1] = number % 10 + '0';
		number /= 10;
	}

	for (k = 0; k < Length - 1; k++) {
		if (array[k] == '0') {
			array[k] = ' ';
		}
		else {
			break;
		}
	}

	Lcd_Display(array);
}
void Lcd_DisplayPicture(){
  for(int x=0; x<4; x++){
    WriteByte_command(0xb0 + x);   //y, page address y=1-0-1-1-y3-y2-y1-y0, 1-page with 8-rows

    /*******automatically increased by one******/
    WriteByte_command(0x10);       //x, column address x=0-0-0-0-1-x7-x6-x5-x4
    WriteByte_command(0x00);       //x, column address x=0-0-0-0-0-x3-x2-x1-x0

    for(int i=0; i<128; i++){
      WriteByte_dat(*(picture+i+x*128));
      }
  }
}
