/*
Miss. Heritage
Final processing project
TODO: Add a brife de
*/
PImage farmerGirl1, farmerGirl2;
int farmerX = 100;
int farmerY = 150;
void setup() { 
  size(800,700);
  farmerGirl1= loadImage("farmergirl 1.png");
  farmerGirl2 = loadImage("farmergirl 2.png");
}

void draw() { 
  background(70, 170, 235);
 if (frameCount % 12 >= 6) {
    image(farmerGirl1, farmerX, farmerY, 100, 120);
  } else {
    image(farmerGirl2, farmerX, farmerY, 100, 120);
  }
  }
void keypressed () {
  println("Key " + key + " was pressed (" + keyCode + ")");
  if (keyCode == RIGHT) {
    farmerX = farmerX + 10;
  } 
  if (keyCode == LEFT) {
    farmerX = farmerX - 10;
  }
   if (keyCode == UP) {
    farmerY = farmerY - 10;
  }
  if (keyCode == DOWN) {
    farmerY = farmerY + 10;
  }
}
