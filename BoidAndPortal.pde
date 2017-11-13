// Click mouse to add boids into the system

Portal portal1;
Portal portal2;
Flock flock;
PImage background;
boolean keypressed = false;

void setup() {
  size(600,338);
  flock = new Flock();
  background = loadImage("bubble.jpg");
  portal1 = new Portal(true);
  portal2 = new Portal(false);
  // Add an initial set of boids into the system
  for (int i = 0; i < 50; i++) {
    Boid b = new Boid(width/2,height/2);
    flock.addBoid(b);
  }
}

void draw() {
  background(background);
    portal1.display();
    portal2.display();
    flock.run();
    if(portal1.visible && portal2.visible)
    flock.teleportation(portal1,portal2);
  
  // Instructions
  fill(0);
  text("Drag the mouse to generate new boids.",10,height-16);
}

// Add a new boid into the System
void mouseDragged() {
  flock.addBoid(new Boid(mouseX,mouseY));
}

//Key
void keyPressed() {
    if (key == ' '){
      portal1.toggleVisible();
      portal2.toggleVisible();
    }
    if(key == 'r'){
      setup();
    }
  }