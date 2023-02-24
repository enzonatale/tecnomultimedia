class Pantallas {
  Juego juego;
  String estado;
  Boton boton1, boton2, boton3, boton4;
  fondo fondo;

  Pantallas() {
    estado="inicio";
    juego = new Juego();
    fondo = new fondo();
    boton1=new Boton  ("JUGAR", 400, 500, 300, 70);
    boton2=new Boton  ("VOLVER AL INICIO", 400, 600, 300, 70);
    boton3=new Boton  ("CREDITOS", 400, 600, 300, 70);
    boton4=new Boton  ("INSTRUCCIONES", 400, 700, 300, 70);
  }

  void dibujar() {
    if (estado=="inicio" ) {
      home();
    }
    if (estado=="jugando" ) {
      fondo.mesa();
      juego.jugando();
    }
    if (estado == "ganador1") {
      fondo.Fondo();
      boton1.dibujar();
      boton2.dibujar();
      juego.J1Win();
    }
    if (estado == "ganador2") {
      fondo.Fondo();
      boton1.dibujar();
      boton2.dibujar();
      juego.J2Win();
    }
    if (estado == "creditos") {
      creditos();
    }
    if (estado == "instrucciones") {
      instrucciones();
    }
  }

  void home() {
    fondo.inicio();
    boton1.dibujar();
    boton3.dibujar();
    boton4.dibujar();
  }

  void creditos() {
    fill(250);
    textSize(60);
    fondo.Fondo();
    boton2.dibujar();
    text("Tp5 Tecno Multimedia 1 \n Programador : Enzo Natale \n Profesor: Leonardo Garay \n Comisión 4", 0, 250 );
  }

  void jugador1() {
    estado = "ganador1";
  }

  void jugador2() {
    estado="ganador2";
  }

  void instrucciones() {
    fill(250);
    textSize(60);
    fondo.Fondo();
    boton2.dibujar();
    text("Mover personaje 1: \n Flechas Arriba y Abajo \n Mover personaje 2: \n Teclas W y S  ", CENTER, 250 );
  }

  void presionar () {
    if (estado=="inicio" && boton1.mouseEncima()) { 
      estado="jugando";
    } else if (estado=="ganador1" && boton2.mouseEncima()) {
      estado="inicio";
    } else if (estado=="ganador1" && boton1.mouseEncima()) {
      estado="jugando";
    } else if (estado=="ganador2" && boton2.mouseEncima()) {
      estado="inicio";
    } else if (estado=="ganador2" && boton1.mouseEncima()) { 
      estado="jugando";
    } else if (estado=="creditos" && boton3.mouseEncima()) {
      boton3.mouseEncima();
      estado="inicio";
    } else if (estado=="inicio" && boton3.mouseEncima()) {       
      estado="creditos";
    } else if (estado=="inicio" && boton4.mouseEncima()) {
      estado="instrucciones";
    } else if (estado=="instrucciones" && boton3.mouseEncima()) {    
      estado="inicio";
    }
  }
}
