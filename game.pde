void game() {
  background(#646464);

  int i = 0;
  while (i < 70) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i = i + 1;
  }
  
  ball();
  paddle();
  
  stroke(pink);
  fill(white);
  rect(50,550,40,40);
  fill(black);
  text("p",50,550);

  
  if (by >= height-bthickness/2) lives = lives - 1;
  if (lives <= 0) mode = GAMEOVER;
  if (score >= 500) mode = WIN;
  
  text("Score:" + score, 550, 570);
  text("lives:" + lives, 550, 540);
  text("HS:" + highscore, 550, 510);

}

void gameClicks() {
      if (mouseX > 30 && mouseX < 70 && mouseY > 530 && mouseY < 570) {
    mode = PAUSE;
  }
}

void ball() {
  fill(light_gray);
  ellipse(bx, by, bthickness, bthickness);

  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  
  //bounce the ball off the walls
  if (bx < bthickness/2 || bx > width-bthickness/2) {
    bvx = -bvx; //bounce off the left and right walls
  }
  if (by < bthickness/2 || by > height-bthickness/2) {
    bvy = -bvy; //bounce off the top and bottom walls
  }
  

 
  
  //bounce off of paddle
  if (dist(px, py, bx, by) < bthickness/2+pthickness/2) {
     bvx = (bx - px)/10;
     bvy = (by - py)/10;
  }
  
}








void paddle() {
  fill(light_gray);
   ellipse(px, py, pthickness, pthickness);
   if (leftKey)  px = px - 5;
   if (px < pthickness/2) px = pthickness/2;
   if (rightKey) px = px + 5;
   if (px > 800-pthickness/2) px = 800-pthickness/2;
}
