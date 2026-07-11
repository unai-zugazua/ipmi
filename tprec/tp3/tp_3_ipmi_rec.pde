//https://youtu.be/GmzXcbHlf0U
PImage obra;
float ang = 0;      
float vel = 0.01; 
float dir = 1;      
boolean play = false; 
void setup() {
  size(800, 400);
  obra = loadImage("39.jpg"); 
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke(); 
}
void dibujar(float x, float y, float a) {
  pushMatrix(); 
  translate(x, y); 
  rotate(a);    
  float tam = 380;    
  for (int i = 0; i < 7; i++) {    
    float colC = map(i, 0, 7, 255, 100);
    fill(colC);
    ellipse(0, 0, tam, tam);         
    tam = tam * 0.71;         
    float colQ = map(i, 0, 7, 0, 100);
    fill(colQ);
    rect(0, 0, tam, tam);
  }    
  popMatrix(); 
}
void draw() {
  background(225);    
  fill(0);
  for (int x = 425; x <= 775; x += 50) {
    for (int y = 25; y <= 375; y += 50) {
      rect(x, y, 50, 50);
    }
  }   
  dibujar(600, 200, ang);     
  image(obra, 0, 0, 400, 400);   
  if (play == true) {
    float avance = 0;        
    if (mouseX > 400) {
      avance = calcGiro(mouseX, mouseY);
    } else {
      avance = vel;
    }        
    ang = ang + (avance * dir);
  }
}
float calcGiro(float mx, float my) {
  float distC = dist(mx, my, 600, 200);
  float velEx = map(distC, 0, 200, 0.08, 0);     
  return vel + velEx; 
}
  void mousePressed() {
  dir = dir * -1; 
}
void keyPressed() {
  if (key == 'p' || key == 'P' || key == ' ') {
    play = !play; 
  }    
  if (key == 'r' || key == 'R') {
    ang = 0; 
    dir = 1; 
    play = false; 
  }
}
