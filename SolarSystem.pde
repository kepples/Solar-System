float time = 0;
Planet mercury;
Planet venus;
Planet earth;
Planet mars;

void setup(){
  size(600, 600);
  frameRate(60);
  mercury = new Planet(81, 50+36, color(229, 137, 137), 10);
  venus = new Planet(243, 50+63, color(225, 185, 100), 20);
  earth = new Planet(365, 50+93, color(50, 100, 220), 21);
  mars = new Planet(686, 50+143, color(225, 20, 20), 14);
}
void draw(){
  time +=5;
  background(0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 50, 50);
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
}

class Planet {
  float daystoorbit;
  float orbitsize;
  color col;
  float size;
  
  Planet(float dto, float obs, color coll, float siz){
    daystoorbit = dto;
    orbitsize = obs;
    col = coll;
    size = siz;
  }
  
  void draw(){
    fill(col);
    ellipse(width/2 - sin(time/daystoorbit) * orbitsize, height/2 + cos(time/daystoorbit) * orbitsize, size, size);
  }
};
