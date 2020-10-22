class Opciones {
  int explosionX, explosionY;
  boolean dead, borrar, reiniciar;
  int time;

  void gameOver() {
    explosionGameOver();
    pantallaDerrota();
    time++;
    if (keyPressed) {
      if (key=='r')reiniciar();
    }//end if
  }//end gameOver

  void reiniciar() {
    //Enemigos
    for (int w=0; w<e.NumeroEnemigos; w++) {
      e.enemigoX[w]= 200;
      e.enemigoY[w]= 0;
      p.proyectilX[w] = -1;
      p.proyectilY[w] = -1;
    }//end for
    j.time= 0;

    //Nave
    n.naveX = width/2;
    n.naveY = height/2;
    b.balaX = n.naveX;
    b.balaY = n.naveY;
    n.vidas[3]= true;
    n.vidas[2]= true;
    n.vidas[1]= true;
    c.impactoNave= 0;
    n.speed=5;

    dead = false;
  }// end reiniciar


  void explosionGameOver() {
    fill(e.gris);
    ellipse(n.naveX, n.naveY, explosionX, explosionY);
    fill(30);
    ellipse(n.naveX, n.naveY, explosionX-25, explosionY-25);
    explosionX+=20;
    explosionY+=20;
    n.speed=0;     
    if (explosionY>height*2) dead=true;
  }//end explosionGameOver


  void pantallaDerrota() {
    if (dead) {
      //texto superior
      fill(e.gris);
      textSize(26);
      text("Parece que ya has naturalizado el fracaso", width/2, (height/2)-45);

      //texto inferior
      PFont fontGameOver;
      fontGameOver = loadFont("MyanmarText-Bold-48.vlw");
      textFont(fontGameOver);
      textSize(18);
      text("quieres volver a intentar?", width/2, (height/2)-10);

      //opciones
      int x= 40, y=25;
      int posX = (width/2);
      int posY = (height/2) + y;
      int tamX = 70;
      int tamY = 40;
      rectMode(CENTER);
      fill(255*0.6, 50);
      rect (posX-x, posY, tamX, tamY);
      rect (posX+x, posY, tamX, tamY);
      textAlign(CENTER);
      fill(e.gris);
      text ("no", posX-x, posY+5);
      text ("si", posX+x, posY+5);
    }//end if(dead)
  }//end pantallaDerrota
}//end Clase opciones
