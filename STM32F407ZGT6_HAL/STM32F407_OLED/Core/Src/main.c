/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "string.h"
#include "oled.h"
#include "stdio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */
  // 刚上电时STM32比OLED启动快，因此需要等待一段时间再初始化OLED
  HAL_Delay(1000);
  // 初始化OLED
  OLED_Init();
  // 设置OLED显示模式：正常/反色
  OLED_SetColorMode(OLED_COLOR_NORMAL);
  // 设置OLED显示方向：0°/180°
  OLED_SetOrientation(OLED_Orientation_0);
  // 清空显示缓冲区
  OLED_ClearBuffer();
  // 将缓存内容更新到屏幕显示
  OLED_Refresh();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1) {
    // 中英文字符串混合显示
    OLED_ClearBuffer();
    OLED_PrintChinese(0, 0, "感谢关注", 16, OLED_COLOR_REVERSED);
    OLED_Refresh();
    HAL_Delay(500);
    OLED_PrintChinese(0, 22, "B站-KEYSKING", 16, OLED_COLOR_NORMAL);
    OLED_Refresh();
    HAL_Delay(500);
    OLED_PrintChinese(0, 44, "\\^o^/", 16, OLED_COLOR_NORMAL);
    OLED_Refresh();
    HAL_Delay(1500);
    // 显示变量值
    int count = 0;
    char buf[10] = {0};
    OLED_ClearBuffer();
    for(;;) {
      sprintf(buf, "%d %%", count);
      OLED_PrintChinese(40, 20, buf, 24, OLED_COLOR_NORMAL);
      OLED_Refresh();
      HAL_Delay(15);
      if(count++ > 99){
        break;
      }
    }
    HAL_Delay(1000);
    // 直线绘制
    OLED_ClearBuffer();
    for (int i = 0; i < 128; i+=8) {
      OLED_DrawLine(0, 0, i, 63, OLED_COLOR_NORMAL);
      OLED_DrawLine(127, 0, 127 - i, 63, OLED_COLOR_NORMAL);
      OLED_Refresh();
      HAL_Delay(30);
    }
    HAL_Delay(1500);
    // 矩形绘制
    OLED_ClearBuffer();
    for (int i = 0; i < 64; i+=8) {
      OLED_DrawRectangle(i, i/2, 127 - i, 63 - i/2, OLED_COLOR_NORMAL);
      OLED_Refresh();
      HAL_Delay(35);
    }
    HAL_Delay(1500);
    // 矩形圆形
    OLED_ClearBuffer();
    for (int i = 63; i > 0; i-=8) {
      OLED_DrawCircle(64, 32, i/2, CIRCLE_ALL, OLED_COLOR_NORMAL);
      OLED_Refresh();
      HAL_Delay(40);
    }
    HAL_Delay(1500);
    // 图片显示1
    OLED_ClearBuffer();
    OLED_DrawPicture(40, 7, 48, 48, icon_IDE, OLED_COLOR_NORMAL);
    OLED_Refresh();
    HAL_Delay(1700);
    // 图片显示2
    OLED_ClearBuffer();
    OLED_DrawPicture(33, 2, 61, 58, icon_Bili, OLED_COLOR_NORMAL);
    OLED_Refresh();
    HAL_Delay(1700);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 3;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
