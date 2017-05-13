import processing.serial.*;

rectangle red;
rectangle green;
rectangle blue;
rectangle yellow;
rectangle white;
rectangle black;

Serial arduino;

void setup() 
{
  size(400,200);
  red =  new rectangle(0,0,100,100,255,0,0);
  green = new rectangle(100,0,100,100,0,255,0);
  blue = new rectangle(200,0,100,100,0,0,255);
  yellow = new rectangle(300,0,100,100,255,255,0);
  white = new rectangle(0,100,200,100,255,255,255);
  black = new rectangle(200,100,200,100,0,0,0);
  printArray(Serial.list()[0]);
  arduino = new Serial(this, Serial.list()[0], 9600);
  
  red.display();
  green.display();
  blue.display();
  yellow.display();
  white.display();
  black.display();
}


void draw() 
{
  if(mousePressed==true)
  {
   if(mouseX>=0 && mouseX<100 && mouseY>=0 && mouseY<100 )
    { 
      println("RED");
      arduino.write(1);
    }
     else if(mouseX>=100 && mouseX<200 && mouseY>=0 && mouseY<100 )
    { 
      println("GREEN");
      arduino.write(2);
    }
     else if(mouseX>=200 && mouseX<300 && mouseY>=0 && mouseY<100 )
    { 
      println("BLUE");
      arduino.write(3);
    }
     else if(mouseX>=300 && mouseX<=400 && mouseY>=0 && mouseY<100 )
    { 
      println("YELLOW");
      arduino.write(4);
    }
     else if(mouseX>=0 && mouseX<=200 && mouseY>=100 && mouseY<200 )
    { 
      println("WHITE");
      arduino.write(5);
    }
    else 
    {
      println("BLACK");
      arduino.write(6);
    }
  }
}