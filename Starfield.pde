Star[] group = new Star[500];
  void setup() {
    size(500, 500);
    background(0, 0 ,0);
    for(int i = 0; i < group.length; i++) {
      group[i] = new Star();
      group[i].Angle();
      group[i].speed();
    }
    
  }
  
  void draw() {
    background(0, 0 ,0);
    for (int i = 0; i < group.length; i++){
      group[i].move();
      group[i].show();
     
    }

  }
  
  class Star {
    double myX, myY, col, myAngle, mySpeed;
    Star() {
      myX = (int)(Math.random() * 250) - 250;
      myY = 250;
      col = 255;
    }
   
    class Bruh {
      int myX, myY, num;
      Bruh() {
        myX = myY = 250;
      }
      void move() {
        if(mouseX > myX) {
          myX = myX + (int)(Math.random() * 7) - 1;
        } else {
            myX = myX + (int)(Math.random() * 7) - 4;
        }
        if(mouseY > myY) {
          myY = myY + (int)(Math.random() * 7) - 1;
        } else {
           myY = myY +(int)(Math.random() * 7) - 4;
        }
      }
    }
        
    void Angle() {
      myAngle = Math.random() * 2 * Math.PI;
    }
    
    void speed () {
      mySpeed = Math.random() * 10;
    }
    
    void move() {
      myX = myX + Math.cos(myAngle) * mySpeed;
      myY = myY + Math.sin(myAngle) * mySpeed;
      if((myX > 500 || myX < 0) || (myY > 500 || myY < 0)) {
        myX = 250;
        myY = 250;
      } 
    }
       
    void show() {
      ellipse((float)myX, (float)myY, 4, 4);
    }
    } 
