int totalRoll = 0;
void setup()
  {
      noLoop();
      size(475, 475);
  }
  void draw()
  {
      totalRoll = 0;
      background(200);
      for(int i = 25; i < 475; i+=50){
        for(int j = 25; j < 475; j+=50){
          Die dice = new Die(i,j);
          dice.show();
          
        }
      }
      textAlign(CENTER);
      text("Total: " + totalRoll, 475/2, 470);
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int roll, myX, myY;
      //variable declarations here
      
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
          //variable initializations here
      }
      void roll()
      {
        roll = (int)(Math.random()*6)+1;
          //your code here
      }
      void show()
      {
          fill(255);
          stroke(0);
          rect(myX, myY, 25, 25);
          fill(0);
          if(roll == 1){
            ellipse(myX + 12.5, myY + 12.5, 5, 5);
            totalRoll += 1;
          }
          if(roll == 2){
            ellipse(myX + 8.33333, myY + 16.66666, 5, 5);
            ellipse(myX + 16.66666, myY + 8.33333, 5, 5);
            totalRoll += 2;
          }
          if(roll == 3){
            ellipse(myX + 18, myY + 7, 5, 5);
            ellipse(myX + 12.5, myY + 12.5, 5, 5);
            ellipse(myX + 7, myY + 18, 5, 5);
            totalRoll += 3;
          }
          if(roll == 4){
            ellipse(myX + 7, myY + 18, 5, 5);
            ellipse(myX + 18, myY + 7, 5, 5);
            ellipse(myX + 7, myY + 7, 5, 5);
            ellipse(myX + 18, myY + 18, 5, 5);
            totalRoll += 4;
          }
          if(roll == 5){
            ellipse(myX + 7, myY + 18, 5, 5);
            ellipse(myX + 18, myY + 7, 5, 5);
            ellipse(myX + 7, myY + 7, 5, 5);
            ellipse(myX + 18, myY + 18, 5, 5);
            ellipse(myX + 12.5, myY + 12.5, 5, 5);
            totalRoll += 5;
          }
          if(roll == 6){
            ellipse(myX + 7, myY + 7, 5, 5);
            ellipse(myX + 7, myY + 12.5, 5, 5);
            ellipse(myX + 7, myY + 18, 5, 5);
            ellipse(myX + 18, myY + 7, 5, 5);
            ellipse(myX + 18, myY + 12.5, 5, 5);
            ellipse(myX + 18, myY + 18, 5, 5);
            totalRoll += 6;
          }
          //your code here
      }
  }