class Juego {
  int time;
  int sumaTime;
  boolean activadorJuego;

  void novela() {
    background(255*0.92);
    novela.estructura();
    novela.mensajes();
    novela.activadorJuego();
    if (activadorJuego) background(30);//Fondo de Juego
  }//end novela

  void nave() {
    if (activadorJuego) {
      n.display();
      n.moveArrows();
      n.moveTeclado();
      n.disparar();
      n.limites();
    }//end activadorJuego
  }//end nave

  void enemigos() {
    if (activadorJuego) {
      time++;
      for (int w=0; w<e.NumeroEnemigos; w++) {
        if (time>= 40*w) {
          e.enemigoLineal(w, "Perro", width*0.3, 0);
        }//end if
      }//end for
    }//end activadorJuego
  }//end enemigos

  void colision() {
    c.balaEnemigo();
    c.balaProyectil();
    c.proyectilNave();
  }

  void perder() {
    if (!n.vidas[1]) o.gameOver();
  }//end perder
}//end Class Juego
