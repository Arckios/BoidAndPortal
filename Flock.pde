
class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  
  void teleportation(Portal p1,Portal p2){
    for(Boid b : boids){
    b.isInside(p1,p2);
    }
  }
  
  ArrayList<Boid> getBoid(){
    return boids;
  }
}