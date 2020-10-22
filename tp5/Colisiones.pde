class Colisiones {
  int hitboxNave= 32;
  int hitboxProyectil = 22;
  int hitboxEnemigo = 25;

  int impactoNave;
  int impactoEnemigo;
  int enemigoMuertoY=-50;


  void balaEnemigo() {
    for (int w = 0; w<e.NumeroEnemigos; w++) {
      float distan = dist(b.balaX, b.bordeBalaY, e.enemigoX[w], e.enemigoY[w]);
      if (distan < hitboxEnemigo) {
        b.posicionInicial(n.naveX, n.naveY);
        e.enemigoY[w] = enemigoMuertoY;
        //e.enemigoLineal(w, "Perro", -2, -2);
        //
      }//end if
    }//end for
  }//end balaTextos


  void balaProyectil() {
    for (int w = 0; w<p.NumeroProyectiles; w++) {
      float distan = dist(b.balaX, b.bordeBalaY, p.proyectilX[w], p.proyectilY[w]);
      if (distan < hitboxProyectil) {
        p.posicionInicial(width+1, height+1, w);
        b.posicionInicial(n.naveX, n.naveY);
      }//end if
    }//end for
  }//end balaProyectil


  void proyectilNave() {
    for (int w = 0; w<p.NumeroProyectiles; w++) {
      float distan = dist(p.proyectilX[w], p.proyectilY[w], n.naveX, n.naveY);
      if (distan < hitboxNave) {
        p.posicionInicial(width+1, height+1, w);
        impactoNave++;
        if (n.vidas[3] & impactoNave==1) n.vidas[3] = false; //tres vidas
        if (n.vidas[2] & impactoNave==2) n.vidas[2] = false; //dos vidas
        if (n.vidas[1] & impactoNave>=3) n.vidas[1] = false; //una vida
      }//end if (hitBox)
    }//end for
  }//end balaProyectil
}//end class Colisiones
