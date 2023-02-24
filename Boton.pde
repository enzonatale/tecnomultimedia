class Boton {
  float x, y, ancho, alto;
  String txtboton;

  Boton (String txtboton_, float x_, float y_, float ancho_, float alto_) {
    x=x_;
    y=y_;
    txtboton=txtboton_;
    ancho=ancho_;
    alto=alto_;
  }

  void dibujar () {
    pushMatrix();
    pushStyle();
    translate(x, y);
    if (mouseEncima()) {
      fill(212, 126, 255);
    } else {
      fill(255);
    }
    rectMode(CENTER);
    rect(0, 0, ancho, alto, 5);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(txtboton, 0, 0);
    popStyle();
    popMatrix();
  }

  boolean mouseEncima () {
    if (mouseX> x-ancho/2 && mouseX < x+ancho/2 && mouseY > y-alto/2 && mouseY < y+alto/2) {
      return true;
    } else {
      return false;
    }
  }
}
