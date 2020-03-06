void select () {
  background(white);

  strokeWeight(0);   

  ballsize();
  paddlesize();

  if (mouseX > 640 && mouseX < 740 && mouseY > 460 && mouseY < 540) {
    fill(black);
  } else {
    fill(gray);    
  }
  rect(700, 500, 80, 80);
  fill(white);
  text("START", 700, 480);    
  text("GAME", 700, 520);
}

void selectClicks () {
  if (mouseX > 640 && mouseX < 740 && mouseY > 460 && mouseY < 540) {
    mode = GAME;
  }
}
