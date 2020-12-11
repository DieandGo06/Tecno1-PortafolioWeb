class Nave {
  //nave
  PImage nave, nave2, nave3;
  int naveX = width/2;
  int naveY = height/2;
  float speed = 6;
  
  //vidas
  boolean [] vidas = new boolean [4];
  boolean disparar;


  Nave() {
    nave = loadImage("nave.png");
    nave2 = loadImage("nave2.png");
    nave3 = loadImage("nave3.png");
    vidas[3]= true;
    vidas[2]= true;
    vidas[1]= true;
  }//end Nave


  void display() {
    imageMode(CENTER);
    if (vidas[3]) image(nave, naveX, naveY); //Nave
    if (vidas[2]) image(nave2, naveX, naveY); //Nave 2 vidas
    if (vidas[1]) image(nave3, naveX, naveY); //Nave 1 vida
  }//end display

  void disparar() {
    if (!disparar) NG.j.b.posicionInicial(naveX, naveY);
    if (disparar) NG.j.b.move();
    disparar = true;
    NG.j.b.display();
    NG.j.b.regresoBala(naveX, naveY);
  }//end void

  void moveArrows() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) naveY-=speed;
        if (keyCode == DOWN) naveY+=speed;
        if (keyCode == LEFT) naveX-=speed;
        if (keyCode == RIGHT) naveX+=speed;
      }//end if (key == CODED)
    }//end if (keyPressed == true)
  }//end move


  void moveTeclado() {//Movimiento con teclas: W A S D
    if (keyPressed) {
      if (key == 'w') naveY-=speed;
      if (key == 's') naveY+=speed;
      if (key == 'a') naveX-=speed;
      if (key == 'd') naveX+=speed;
    }//end if
  }//end moveTeclado


  void limites() {
    if (naveX<(width*0.04)) naveX+= speed; //borde izquierdo  
    if (naveX>(width*0.96)) naveX-= speed; //borde derecho
    if (naveY<(height*0.04)) naveY+= speed;//borde superior 
    if (naveY>(height*0.96)) naveY-= speed;//borde inferior
  }//end limites
}//-------------------------------------------------------------------------------- end Class Nave





//--------------------------------------------------------------------------------- start Class Bala
class Bala {
  PImage bala;
  float balaX, balaY;
  float bordeBalaY;

  Bala() {
    bala = loadImage("bala.png");
  }//end Bala

  void posicionInicial(int x, int y) {
    balaX = x;
    balaY = y;
  }

  void display() {
    float bordeSuperior = -(width/6)*0.15;//-15;
    imageMode(CENTER);
    image(bala, balaX, balaY);
    bordeBalaY = balaY - bordeSuperior;
    //El valor balaX, balaY viene de posicionInicial(x,y);
  }

  void move() {
    int speed = 0;
    if (NG.j.nivel_de_ansiedad=="baja") speed=10;
    if (NG.j.nivel_de_ansiedad=="media") speed=20;
    if (NG.j.nivel_de_ansiedad=="alta") speed=18;
    balaY -= speed;
  }//end void

  void regresoBala(int x, int y) {
    if (balaY<0) posicionInicial(x, y);
  }//end void
}// end Class Balala
