public void setup() {
  size(600, 600);
  // places rectangles x,y cords in the center of the shape rather than the OG default (which is in the corner)
  //rectMode(CENTER);
    rose(300, 300, 1000, false, 50);
}

boolean testerFlip = false;
public void draw() {
  //myFractal(300, 300, 300, 300);
}

// dist is distance each circle gets away from each other
public void rose(int x, int y, float size, boolean flip, int dist) {
  if(size >= 30) {
    pushMatrix();
    translate(300, 300);
    //stroke(255, 0, 0, 25);
    stroke(255, 255, 255, 70);
    if(testerFlip == true) {
          fill(255, 166, 187, 30);
      rotate(radians(45));
      ellipse(0, 0-dist, size, size);
      ellipse(0+dist, 0, size, size);
      ellipse(0, 0+dist, size, size);
      ellipse(0-dist, 0, size, size);
      popMatrix();
      testerFlip = false;
    } else {
      testerFlip = true;
      ellipse(0, 0-dist, size, size);
      ellipse(0+dist, 0, size, size);
      ellipse(0, 0+dist, size, size);
      ellipse(0-dist, 0, size, size);
      popMatrix();
    }
    rose(x, y, size*.6, flip, dist);
  }
}

//public void botPetal(int x, int y, float size) {
//  if(size <= 200) {
//    ellipse(x, y, size, size);
//    botPetal(x, y+20, size+20);
//  }
//}
//public void topPetal(int x, int y, float size) {
//  if(size <= 200) {
//    ellipse(x, y, size, size);
//    topPetal(x, y-20, size+20);
//  }
//}

public void myFractal(int x, int y, float size, int rotation) {
  if(size >=30) {
  //rotation flower
   //makes a rotated shape
    pushMatrix();
   // translate the origin
  translate(x, y);
  // change the rotation amount
  rotate(radians(rotation));
  // put the x and y cords at origin (AKA x, y, 3 lines above)
  rect(0, 0, size, size*1.5);
  //arc(0, 0, size, size, 0, PI);
  // return origin back to its original state
  popMatrix();
  myFractal(x, y, size-5, rotation+30);
  } 
      // don't do anything if the size gets to small
    // (that's why there's no code here)
}

    // if i take out the else statement it crashes. why is that?
    // a, its the drawing feature; b, it's me; c, it's processing
