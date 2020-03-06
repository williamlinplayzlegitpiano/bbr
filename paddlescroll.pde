void paddlesize() {
   fill(black);
   strokeWeight(5);
   stroke(black);
   line(600,400,600,500);
   strokeWeight(2);
   stroke(black);
   ellipse(600,psliderY,20,20);

   if (mousePressed) {
     if (dist (600, psliderY, mouseX, mouseY) < 20) {
       psliderY = mouseY ;
       if (psliderY < 400) {
         psliderY = 400;
       }
       if (psliderY > 500) {
         psliderY = 500;
       }
     }
   }
 strokeWeight(1);
 stroke(black);
 fill(black);
 ellipse(600,280,pthickness,pthickness);
 
pthickness = map(psliderY, 400, 500, 80, 160);


}
