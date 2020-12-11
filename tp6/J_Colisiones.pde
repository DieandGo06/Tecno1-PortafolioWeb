class Colisiones {
  int hitboxNave= 32;
  int hitboxProyectil = 22;
  int hitboxEnemigo = 25;

  int impactoNave;
  int impactoEnemigo;
  int enemigoMuertoY=-50;
  int contador_de_enemigos_muertos;

  void bala_texto() {
    int alto_de_texto = 20;
    for (int w = 0; w<NG.j.e.NumeroEnemigos; w++) {
      float hitbox_de_texto_x1 = NG.j.e.enemigoX[w] - (NG.j.e.anchoTexto[w] / 2);
      float hitbox_de_texto_x2 = NG.j.e.enemigoX[w] + (NG.j.e.anchoTexto[w] / 2);
      float hitbox_de_texto_y1 = NG.j.e.enemigoY[w] - alto_de_texto;
      float hitbox_de_texto_y2 = NG.j.e.enemigoY[w];
      if (NG.j.b.balaX >= hitbox_de_texto_x1  &&  NG.j.b.bordeBalaY >= hitbox_de_texto_y1  &&  NG.j.b.balaX <= hitbox_de_texto_x2  &&  NG.j.b.bordeBalaY <=  hitbox_de_texto_y2) {
        NG.j.b.posicionInicial(NG.j.n.naveX, NG.j.n.naveY);
        NG.j.e.enemigoY[w] = enemigoMuertoY;
        contador_de_enemigos_muertos++;
      }
    }
    println(contador_de_enemigos_muertos);
    //reticula_de_hitbox();
  }


  void balaProyectil() {
    for (int w = 0; w<NG.j.p.cantidad_de_proyectiles; w++) {
      float distan = dist(NG.j.b.balaX, NG.j.b.bordeBalaY, NG.j.p.proyectilX[w], NG.j.p.proyectilY[w]);
      if (distan < hitboxProyectil) {
        NG.j.p.posicionInicial(width+1, height+1, w);
        NG.j.b.posicionInicial(NG.j.n.naveX, NG.j.n.naveY);
      }
    }
  }


  void proyectilNave() {
    for (int w = 0; w<NG.j.p.cantidad_de_proyectiles; w++) {
      float distan = dist(NG.j.p.proyectilX[w], NG.j.p.proyectilY[w], NG.j.n.naveX, NG.j.n.naveY);
      if (distan < hitboxNave) {
        NG.j.p.posicionInicial(width+1, height+1, w);
        impactoNave++;
        if (NG.j.n.vidas[3] & impactoNave==1) NG.j.n.vidas[3] = false; //tres vidas
        if (NG.j.n.vidas[2] & impactoNave==2) NG.j.n.vidas[2] = false; //dos vidas
        if (NG.j.n.vidas[1] & impactoNave>=3) NG.j.n.vidas[1] = false; //una vida
      }
    }
  }


  void reticula_de_hitbox() {
    for (int w = 0; w<NG.j.e.NumeroEnemigos; w++) {
      //noFill();
      //stroke(1);
      rect (NG.j.e.enemigoX[w], NG.j.e.enemigoY[w]-10, NG.j.e.anchoTexto[w], 20);//hitbox del texto
    }
  }
  void pausar_juego() {
    for (int w = 0; w<NG.j.e.NumeroEnemigos; w++) {
      if (keyPressed) if (key == 'q') {
        NG.j.e.speedX[w] = 0;
        NG.j.e.speedY[w] = 0;
        //noLoop();
      }
    }
  }
}//end class Colisiones
