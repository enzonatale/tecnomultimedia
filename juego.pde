class Juego {
  Jugador jugador;
  Jugador2 jugador2;
  Pelota pelota;
  Puntos puntos1, puntos2;
  fondo fondo;


  Juego() {
    pelota = new Pelota ( width/2-50, height/2, 50, 50 );
    jugador = new Jugador (50, height/2, 5, 250);
    jugador2 = new Jugador2 (width-50, height/2, 5, 250);
    puntos1 = new Puntos(0, 750, 100);
    puntos2 = new Puntos(0, 50, 100);
    fondo = new fondo();
  }

  void jugando() {
    jugador.dibujar();
    jugador.mover();
    jugador2.dibujar();
    jugador2.mover();
    puntos1.dibujar();
    puntos2.dibujar();
    pelota.dibujar();
    pelota.mover();
    pelota.reboteArriba();
    pelota.reboteAbajo();
    puntos1.dibujar();
    puntos2.dibujar();

    if (pelota.sumarPuntos()) {
      puntos1.sumar();
    }

    if (pelota.sumarPuntos2()) {
      puntos2.sumar();
    }

    if (pelota.colision(jugador2.x, jugador2.y, jugador2.tam, jugador2.tam2)) {
      musica.play();
      musica.rewind();
      pelota.rebote();
    }
    if (pelota.colision(jugador.x, jugador.y, jugador.tam, jugador.tam2)) {
      musica.play();
      musica.rewind();
      pelota.rebote2();
    }

    if (puntos1.puntos== 3 ) {
      pantallas.jugador1();
    }

    if (puntos2.puntos == 3 ) {
      pantallas.jugador2();
    }
  }

  void J1Win() {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(80);
    text("Ganador Jugador 1", width/2, height/2 );
    puntos1.puntos = 0;
    puntos2.puntos = 0;
  }

  void J2Win() {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(80);
    text("Ganador Jugador 2", width/2, height/2 );
    puntos1.puntos = 0;
    puntos2.puntos = 0;
  }
}
