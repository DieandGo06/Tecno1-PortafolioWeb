class Proyectil {
  PImage balaNaranja;

  int NumeroProyectiles = 30;
  float [] proyectilX = new float [NumeroProyectiles];
  float [] proyectilY = new float [NumeroProyectiles];
  float [] speedX = new float [NumeroProyectiles];
  float [] speedY = new float [NumeroProyectiles];


  Proyectil() {
    for (int i=0; i<NumeroProyectiles; i++) {
      speedX[i]= random(-1, 2);
      speedY[i]= random(2, 4);
    }//end for
  }//end Proyectil


  void posicionInicial(float x, float y, int w) {
    proyectilX[w]+= x;
    proyectilY[w]+= y;
  }//end posicionInicial


  void display(float x, float y) {
    propiedadesBala();
    image(balaNaranja, x, y);
  }//end balaEnemiga


  void moveBala(int w) {
    proyectilX[w]+= speedX[w];
    proyectilY[w]+= speedY[w];
  }// end moveBala


  //ESQUEMAS DE DISPARO
  void disparoUnico(float textoX, float textoY, int w) {
    if (proyectilX[w]>0 & proyectilX[w]<width & proyectilY[w]>0 & proyectilY[w]<height) {
      moveBala(w);
      display(proyectilX[w], proyectilY[w]);
    } else {
      proyectilX[w]= textoX;
      proyectilY[w]= textoY;
      //speedX[w] *= -1;
      //Al salir de la pantalla, vuelve a disparar en direccion opuesta.
    }//end else
  }//end disparoUnico



  void propiedadesBala() {
    balaNaranja = loadImage("proyectil naranja.png");
    imageMode(CENTER);
  }//end propiedadesBala
}//end Class Proyectil
