#include <Wire.h>

#define RED_LED                                     5
#define GREEN_LED                                   9
#define BLUE_LED                                    6
#define BATTERY_PIN                                 A0
#define ARDUINO_I2C_ADDRESS                         0x0f

#define SET_RED_LED                                 0x01
#define SET_GREEN_LED                               0x02
#define SET_BLUE_LED                                0x03
#define READ_BATTERY                                0x04


void setup()
{
	Wire.begin(ARDUINO_I2C_ADDRESS);
	pinMode(RED_LED,OUTPUT);
	pinMode(GREEN_LED,OUTPUT);
	pinMode(BLUE_LED,OUTPUT);
	pinMode(BATTERY_PIN,INPUT);
	Wire.onReceive(receiveEvent);
	Wire.onRequest(requestEvent);
}


void loop()
{

}

void receiveEvent()
{
	char cmd = Wire.read();
	if(cmd==SET_RED_LED)
	{
		char colour = Wire.read();
		set_red(colour);
	} 
	else if(cmd==SET_GREEN_LED)
	{
		char colour = Wire.read();
		set_green(colour);
	} 
	else if(cmd==SET_BLUE_LED)
	{
		char colour = Wire.read();
		set_blue(colour);
	} 
}

void requestEvent()
{
		int c= analogRead(BATTERY_PIN);
    unsigned char bat = (c/4);
		Wire.write(bat);
}

void set_red(char c)
{
	analogWrite(RED_LED,c);
}

void set_green(char c)
{
	analogWrite(GREEN_LED,c);
}

void set_blue(char c)
{
	analogWrite(BLUE_LED,c);
}
