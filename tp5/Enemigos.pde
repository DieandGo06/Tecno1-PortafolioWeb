class Enemigos {  
  PFont fontA;
  int tamTexto;

  int NumeroEnemigos = 30;
  float [] speedX = new float [NumeroEnemigos];
  float [] speedY = new float [NumeroEnemigos];
  float [] enemigoX = new float [NumeroEnemigos];
  float [] enemigoY = new float [NumeroEnemigos];
  float [] anchoTexto = new float [NumeroEnemigos];
  boolean [] mover = new boolean [NumeroEnemigos];
  boolean [] disparar = new boolean [NumeroEnemigos];
  boolean [] impacto = new boolean [NumeroEnemigos];

  int [] vidas = new int [NumeroEnemigos];
  int [] time = new int [NumeroEnemigos];
  int [] sumaTime = new int [NumeroEnemigos];
  color [] colorEnemigos = new color [NumeroEnemigos];
  color gris = #dad5c6;
  color negro = 0;


  Enemigos() {
    for (int i=0; i<NumeroEnemigos; i++) {
      speedX[i]= random(-3, 4);
      speedY[i]= random(1, 4);
    }//end for
    tamTexto = 28;
  }//end Enemigos



  void enemigoLineal(int w, String texto, float x, float y) {//"w" es el numero de enemigo.
    //anchoTexto [w] = textWidth(texto); ANCHO DE TEXTO
    //propiedadesTexto(w); PROPIEDADES DEL TEXTO
    propiedadesEnemigo();
    if (!mover[w]) {    
      enemigoX[w] = x;
      enemigoY[w] = y;
    }//end if (!mover[w])
    if (!disparar[w]) {
      p.posicionInicial(x, y, w);
    }//end if (!disparar[w])    
    moveLineal(w);
    //text(texto, enemigoX[w], enemigoY[w]); INTRODUCIR TEXTO
    rect (enemigoX[w], enemigoY[w], 50, 50);
    disparar(w);
    p.disparoUnico(enemigoX[w], enemigoY[w], w);
  }//end maloLineal


  void moveLineal(int w) {
    mover[w]=true;
    enemigoX[w]+= speedX[w];
    enemigoY[w]+= speedY[w];
    rebote(w);
  }//end moveLineal


  void rebote(int w) {
    if (enemigoY[w]>height*0.4 || enemigoY[w]<-1) {
      speedY[w]*= -1;
    }//end if (enemigoY[w])
    if (enemigoX[w]<=width*0.1 || enemigoX[w]>= width-(width*0.1)) {
      speedX[w]*= -1;
      //Todos los enemigos tienen que inciar en enemigoY[w]=0, porque rebotan en -1.
    }//end if (enemigoX)
  }//end rebote

  void propiedadesEnemigo() {
    fill(255*0.8);
    rectMode(CENTER);
  }//end void

  void propiedadesTexto(int w) {
    fontA = loadFont("Candara-Light-48.vlw");
    fill(gris);
    textFont(fontA);
    textSize(tamTexto);
    textAlign(CENTER);
    vidas[w]= 3;
  }//end propiedadesTextos

  void disparar(int w) {
    disparar[w]=true;
  }//end disparar[w]
}//end Class Enemigos
