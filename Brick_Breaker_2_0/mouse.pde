void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == SELECT) {
    selectClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == WIN) {
    winClicks();    
  } else if (mode == PAUSE) {
    pauseClicks();
  } else {
     println("Mode error");
  }
}
