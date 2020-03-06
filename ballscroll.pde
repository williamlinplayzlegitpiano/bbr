void ballsize () {
   fill(black);
   strokeWeight(5);
   stroke(black);
   line(200,400,200,500);
   strokeWeight(2);
   stroke(black);
   ellipse(200,sliderY,20,20);

   if (mousePressed) {
     if (dist (200, sliderY, mouseX, mouseY) < 20) {
       sliderY = mouseY ;
       if (sliderY < 400) {
         sliderY = 400;
       }
       if (sliderY > 500) {
         sliderY = 500;
       }
     }
   }
        strokeWeight(1);
 stroke(black);
 fill(black);
 ellipse(200,280,bthickness,bthickness);
 
bthickness = map(sliderY, 400, 500, 10, 30);

fill(black);
text("<- SAMPLE ->",400,280);


}
