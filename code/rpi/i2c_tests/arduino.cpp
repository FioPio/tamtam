#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <stdio.h>

#define ARDUINO_I2C_ADDRESS                         0x0f

#define SET_RED_LED                                 0x01
#define SET_GREEN_LED                               0x02
#define SET_BLUE_LED                                0x03
#define READ_BATTERY                                0x04

int main()
{
  wiringPiSetupSys();
  int ARDUINO=wiringPiI2CSetup (ARDUINO_I2C_ADDRESS);
  if (ARDUINO==-1)
  {
    printf("big error");
    return -1;
  }
  wiringPiI2CWriteReg8(ARDUINO, SET_GREEN_LED, 255);
  delay(1000);
  printf("%d\n",wiringPiI2CReadReg8(ARDUINO,READ_BATTERY));
  delay(1000);
  return 0;
}
