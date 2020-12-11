class Juego {
  Enemigos e;
  Proyectil p;
  Colisiones c;
  Nave n;
  Bala b;

  color fondo_juego;
  String nivel_de_ansiedad;


  Juego() {
    e = new Enemigos();
    p = new Proyectil();
    c = new Colisiones();
    n = new Nave();
    b = new Bala();
    fondo_juego = 30;
  }


  void display() {
    nave();
    enemigos();
    colision();
    println(NG.e.ansiedad);
  }
  
  void nave() {   
    background(fondo_juego);
    n.display();
    n.moveArrows();
    n.moveTeclado();
    n.disparar();
    n.limites();
  }

  void enemigos() {
    //NG.e.ansiedad = 80;
    seleccionar_nivel ();
    if (nivel_de_ansiedad == "baja") e.display_nivel_1_ansiedad_baja();
    if (nivel_de_ansiedad == "media") e.display_nivel_2_ansiedad_media();
    if (nivel_de_ansiedad == "alta") e.display_nivel_3_ansiedad_alta();
  }

  void colision() {
    c.bala_texto();
    c.balaProyectil();
    c.proyectilNave();
  }

  void perder() {
    if (!n.vidas[1]) NG.o.gameOver_juego();
  }
  
  void ganar() {
    NG.o.ganar_juego();
  }


  void seleccionar_nivel () {
    if (NG.e.ansiedad <= 19) nivel_de_ansiedad = "baja";
    if (NG.e.ansiedad >= 20 && NG.e.ansiedad <= 69) nivel_de_ansiedad = "media";
    if (NG.e.ansiedad >= 70) nivel_de_ansiedad = "alta";
  }//end Class Juego
}
