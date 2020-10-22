class Bala {
  PImage bala;
  float balaX, balaY;
  boolean disparar;
  float bordeBalaY;
  


  void posicionInicial(int x, int y) {
    balaX = x;
    balaY = y;
  }//end posicionInicial
  //Se fija una posicion inicial.


  void display() {
    int bordeSuperior = -15;
    propiedadesBala();
    image(bala, balaX, balaY);
    bordeBalaY = balaY - bordeSuperior;
  }// end display
  //El valor balaX, balaY viende de posicionInicial(x,y);

  void move() {
    int speed = 10;
    balaY -= speed;
  }//end move

  void regresoBala(int x, int y) {
    if (balaY<0) {
      posicionInicial(x, y);   
    }//end if
  }//end regresoBala



  void propiedadesBala() {
    imageMode(CENTER);
    bala = loadImage("bala.png");
  }
}// end Class Bala
