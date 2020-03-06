void intro () {
  background(green);
 // theme.pause();
  
  if (mouseX > 350 && mouseX < 450 && mouseY > 315 && mouseY < 385) {
    fill(blush_blue);  
  } else {
    fill(light_blue);  
  }
  rect(400,350,100,70);
  fill(blue);
  textSize(60);
  textFont(font);
  text("Brick Breaker",400,200);
  fill(black);
  textSize(15);
  text("START",400,350);
}

void introClicks () {
  if (mouseX > 350 && mouseX < 450 && mouseY > 315 && mouseY < 385) {
    mode = SELECT;
  }
}
