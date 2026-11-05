

/*
Miss. Heritage
Final Processing Project
TODO: Add a brief description
Game name: Danger Dash receation
*/


PImage farmerGirl1, farmerGirl2;
boolean walking = false;
float groundX = 0;
float farmerY = 430;
float jumpSpeed = 0;
float gapSize1;
float gapSize2;
int jumps = 0;

void setup() {
size(800, 700);

farmerGirl1 = loadImage("farmergirl 1.png");
farmerGirl2 = loadImage("farmergirl 2.png");

gapSize1 = random(100, 250);
gapSize2 = random(100, 250);
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

groundX = groundX - 3;

if (groundX <= -1000) {
groundX = groundX + 1000;

gapSize1 = gapSize2;
gapSize2 = random(100, 250);
}

fill(130, 80, 40);
rect(groundX, 560, 300, 140);

fill(60, 180, 60);
rect(groundX, 550, 300, 15);

fill(130, 80, 40);
rect(groundX + 300 + gapSize1, 560,
700 - gapSize1, 140);

fill(60, 180, 60);
rect(groundX + 300 + gapSize1, 550,
700 - gapSize1, 15);

fill(130, 80, 40);
rect(groundX + 1000, 560, 300, 140);

fill(60, 180, 60);
rect(groundX + 1000, 550, 300, 15);

fill(130, 80, 40);
rect(groundX + 1300 + gapSize2, 560,
700 - gapSize2, 140);

fill(60, 180, 60);
rect(groundX + 1300 + gapSize2, 550,
700 - gapSize2, 15);

if (jumps > 0) {

farmerY = farmerY + jumpSpeed;
jumpSpeed = jumpSpeed + 0.5;

if (farmerY >= 430) {
farmerY = 430;
jumpSpeed = 0;
jumps = 0;
}
}

if (walking) {
if (frameCount % 12 >= 6) {
image(farmerGirl1, 100, farmerY, 100, 130);
} else {
image(farmerGirl2, 100, farmerY, 100, 130);
}
} else {
image(farmerGirl1, 100, farmerY, 100, 130);
}
}

void keyPressed() {
walking = true;

if (key == 'w' && jumps < 2) {
jumpSpeed = -14;
jumps = jumps + 1;
}
}

void keyReleased() {
walking = false;
}
