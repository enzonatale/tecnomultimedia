class Jugador {
  float x, y, tam, tam2 ;
  PImage paleta;
  Jugador(float x, float y, float tam, float tam2) {
    this.x = x;
    this.y = y;
    this.tam = tam;
    this.tam2 = tam2;
    paleta = loadImage("paleta.png");
  }

  void dibujar() {
    push();
    fill(255);
    rectMode(CENTER);
    rect(x, y, tam, tam2);
    image(paleta, x, y, 100, 500);
    pop();
  }

  void mover() {
    if (keyPressed & key == 'w') {
      y = y - 8;
    } else if (keyPressed & key == 's') {
      y = y + 8;
    }
  }
}
