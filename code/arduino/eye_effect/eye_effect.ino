#include <tamtam.h>

tamtam Tam(true);

void setup()
{
   //Tam.eyes_effect(5);
   delay(1500);
   Tam.set_eyes_colour(OFF);//255,0,0);
   Serial.begin(9600);
}


void loop()
{
  //char c;
	Tam.spin();
 //if (Serial.available())
 //{
    //c=Serial.read();
    //if(c=='g') Tam.set_eyes_colour(GREEN);
 //}
}
