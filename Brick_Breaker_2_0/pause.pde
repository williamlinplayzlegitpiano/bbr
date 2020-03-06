void pause () {
 background(0);
 //theme.pause();
  
  stroke(pink);
  fill(white);
  rect(50,550,40,40);
  fill(black);
  text("r",50,550);

}

void pauseClicks () {
    if (mouseX > 30 && mouseX < 70 && mouseY > 530 && mouseY < 570) {
    mode = GAME;
  }
}
