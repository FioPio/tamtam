#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <stdio.h>

int main()
{
  wiringPiSetupSys();
  int SD20=wiringPiI2CSetup (0x61);
  if (SD20==-1)
  {
    printf("big error");
    return -1;
  }
  wiringPiI2CWriteReg8(SD20, 21, 32);
  delayMicroseconds(70);
  wiringPiI2CWriteReg8(SD20, 22, 1);
  delayMicroseconds(70);
  wiringPiI2CWriteReg8(SD20, 23, 224);
  delayMicroseconds(70);
  wiringPiI2CWriteReg8(SD20, 1, 1);
  delay(1000);
  wiringPiI2CWriteReg8(SD20, 1, 128);
  delay(1000);
  return 0;
}
