class fondo {
  PImage inicio, mesa, fondo;

  fondo() {
    imageMode(CENTER);
    inicio=loadImage("inicio.jpg");
    mesa=loadImage("mesa.jpg");
    fondo=loadImage("fondo.jpg");
  }
  
  void inicio() {
    image(inicio, width/2, height/2, 800, 800);
  }
  
  void mesa() {
    image(mesa, width/2, height/2, 800, 800);
  }

  void Fondo() {
    image(fondo, width/2, height/2, 800, 800);
  }
}
