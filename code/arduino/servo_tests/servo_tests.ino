 #include <tamtam.h>

tamtam Tam;

void setup()
{
   //Tam.eyes_effect(5);
   //
   //Wire.begin();
   Tam.tamtam_setup();
   delay(150);
   
   Serial.begin(9600);
   //Tam.setExpand();
   Tam.enable_motors();
   Tam.set_eyes_colour(GREEN);
}


void loop()
{
  /*Tam.set_servo(1,255);
  delay(1000);
  Tam.set_servo(1,128);
  delay(1000);
  Tam.set_servo(1,1);
  delay(1000);
  Tam.set_servo(1,128);
  delay(1000);
  */
}
