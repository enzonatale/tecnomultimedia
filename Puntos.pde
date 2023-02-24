class Puntos {
  float x, y;
  int puntos;

  Puntos ( int puntos, float x, float y) {
    this.x = x; 
    this.y = y;
    this.puntos= puntos;
  }
  
  void dibujar () {
    push();
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text(puntos, x, y);
    pop();
  }
  
  void sumar() {
    puntos++;
  }
}
