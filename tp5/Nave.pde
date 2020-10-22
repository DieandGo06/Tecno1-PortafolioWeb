class Nave {

  int naveX = width/2;
  int naveY = height/2;
  float speed = 5;
  boolean disparar;
  boolean [] vidas = new boolean [4];

  Nave(){
    vidas[3]= true;
    vidas[2]= true;
    vidas[1]= true;
  }


  void display() {
    PImage nave, nave2, nave3;
    imageMode(CENTER);
    nave = loadImage("nave.png");
    nave2 = loadImage("nave2.png");
    nave3 = loadImage("nave3.png");
    if (vidas[3]) image(nave, naveX, naveY); //Nave
    if (vidas[2]) image(nave2, naveX, naveY); //Nave 2 vidas
    if (vidas[1]) image(nave3, naveX, naveY); //Nave 1 vida
  }//end display

  void disparar() {
    if (!disparar) b.posicionInicial(naveX, naveY);
    if (disparar) b.move();
    disparar = true;
    b.display();
    b.regresoBala(naveX, naveY);
  }

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
}// end Class Nave
