int data;
int ledRed=8;
int ledGreen=9;
int ledBlue=10;
int ledYellow=11;

void setup()
{
  //Create Serial Object (9600 Baud)
  Serial.begin(9600);
  pinMode(ledRed,OUTPUT);
  pinMode(ledGreen,OUTPUT);
  pinMode(ledBlue,OUTPUT);
  pinMode(ledYellow,OUTPUT);
  
  digitalWrite(ledRed,LOW);
  digitalWrite(ledGreen,LOW);
  digitalWrite(ledBlue,LOW);
  digitalWrite(ledYellow,LOW);
}

/*void loop()
{
  if(Serial.available() > 0)
  {
    data=Serial.read();
  }

}*/

void loop()
{
  if(Serial.available() > 0)
  {
    data=Serial.read();
  }

  if(data==1)
  {
  digitalWrite(ledRed,HIGH);
  digitalWrite(ledGreen,LOW);
  digitalWrite(ledBlue,LOW);
  digitalWrite(ledYellow,LOW);
  Serial.println(" colour is : RED");
  }
  if(data==2)
  {
  digitalWrite(ledRed,LOW);
  digitalWrite(ledGreen,HIGH);
  digitalWrite(ledBlue,LOW);
  digitalWrite(ledYellow,LOW);
  Serial.println("colour is : GREEN");
  }
  if(data==3)
  {
  digitalWrite(ledRed,LOW);
  digitalWrite(ledGreen,LOW);
  digitalWrite(ledBlue,HIGH);
  digitalWrite(ledYellow,LOW);
  Serial.println("colour is : BLUE");
  }
  if(data==4)
  {
  digitalWrite(ledRed,LOW);
  digitalWrite(ledGreen,LOW);
  digitalWrite(ledBlue,LOW);
  digitalWrite(ledYellow,HIGH);
  Serial.println("colour is : YELLOW");
  }
  if(data==5)
  {
  digitalWrite(ledRed,HIGH);
  digitalWrite(ledGreen,HIGH);
  digitalWrite(ledBlue,HIGH);
  digitalWrite(ledYellow,HIGH);
  Serial.println("colour is : WHITE");
  }
  if(data==6)
  {
  digitalWrite(ledRed,LOW);
  digitalWrite(ledGreen,LOW);
  digitalWrite(ledBlue,LOW);
  digitalWrite(ledYellow,LOW);
  Serial.println("colour is : BLACK");
  }







}
