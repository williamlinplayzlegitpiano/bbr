void gameover () {
  background(blue);
  //gameover.play();
  //theme.pause();

  if (score > highscore) {
    highscore = score;
  } else {
  }




  strokeWeight(1);
  if (mouseX > 350 && mouseX < 450 && mouseY > 315 && mouseY < 385) {
    strokeWeight(3);
  }
  
  stroke(light_gray);
  fill(gray);
  rect(400, 350, 100, 70);
  fill(black);
  textSize(15);
  text("PLAY AGAIN", 400, 350);

  fill(black);
  text("YOU LOST", 400,200);
  
  strokeWeight(1);
  stroke(pink);
  fill(white);
  rect(50, 50, 45, 45);
  fill(black);
  text("HS: " + highscore, 50, 50);
}


void gameoverClicks() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 315 && mouseY < 385) {
    mode = INTRO;
    setup();
  }

}
