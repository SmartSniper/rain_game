int score = 0;
PImage photoBucket;
int ellipseX = (int)random(10, 990);
int ellipseY = 0;
void setup(){
  photoBucket = loadImage("download.png");
  size(1000, 900);
}
void draw(){
  background(0, 0, 0);
  fill(255, 255, 255);
  textSize(16);
  text("Score:" + score, 20, 20);
  noStroke();
  fill(255, 255, 255);
  ellipse(ellipseX, ellipseY, 10, 20);
  ellipseY += 5;
  image(photoBucket, mouseX, mouseY);
  checkCatch();
  if(ellipseY > height){
    ellipseX = (int)random(10, 990);
    ellipseY = 0;
  }
}
void checkCatch(){
if (ellipseY > mouseY && ellipseY < mouseY + 50 &&( ellipseX >= mouseX && ellipseX < mouseX + 25)){
      score++;
      println("Your score is now: " + score);
      ellipseY = 0;
      ellipseX = (int)random(10, 990);
      fill(0, 0, 0);
      textSize(16);
      text("Score: " + score, 20, 20);

}
}

