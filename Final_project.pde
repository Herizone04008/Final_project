
/*
Miss. Heritage
Final Processing Project
TODO: Add a brief description
*/

PImage farmerGirl1, farmerGirl2;
boolean walking = false;
void setup() {
size(800, 700);

farmerGirl1 = loadImage("farmergirl 1.png");
farmerGirl2 = loadImage("farmergirl 2.png");
}

void draw() {
 background(100, 190, 245);

 noStroke();

 fill(255);

 ellipse(150, 100, 100, 50);
 ellipse(190, 90, 80, 60);
 ellipse(220, 105, 100, 45);

ellipse(550, 160, 100, 50);
ellipse(590, 145, 80, 60);
ellipse(620, 160, 100, 45);


 fill(130, 80, 40);
 rect(0, 560, 800, 140);


 fill(60, 180, 60);
rect(0, 550, 800, 15);
  
  if (frameCount % 12 >= 6) {
    image(farmerGirl1, 100, 430, 100, 120);
 } else {
    image(farmerGirl2, 100, 430, 100, 120);
}
}

void keyPressed() {
  walking = true;
}
