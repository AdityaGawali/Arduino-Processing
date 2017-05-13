class rectangle
{
  int h;
  int w;
  int colourR;
  int colourG;
  int colourB;
  int cornerX;
  int cornerY;
  
  
  
  rectangle(int cornerX,int cornerY,int h,int w, int colourR,int colourG,int colourB)
  { 
    this.cornerX=cornerX;
    this.cornerY=cornerY;
    this.h=h;
    this.w=w;
    this.colourR=colourR;
    this.colourG=colourG;
    this.colourB=colourB;
    
  }
 void  display()
 {
  noStroke();
  fill(this.colourR,this.colourG,this.colourB);
  rect(this.cornerX,this.cornerY,this.h,this.w);
  
 
  
 }
 
 
 
  
}