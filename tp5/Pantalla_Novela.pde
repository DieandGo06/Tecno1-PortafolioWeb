class Novela {
  String [] mensajesIntro = {"", "Instrucciones", "haz click rectangulo gris", 
    "para entrar al juego", "podes entrar cuando quieras", "y cuantas veces quieras", "si ganas, se reduce la ansiedad", 
    "si pierdes, aumenta", "Te podes mover con las flechas", "o con WASD", "los disparos son autmaticos", 
    "solo intenta no morir"};
  float [] anchoTextoIntro = new float [mensajesIntro.length];

  //VARIABLES FUNDAMENTALES
  int posicionY;
  int unaLinea = 45;
  int peque = 5, grande = 10;
  int mujer = 20, hombre = 330, esquinas = 10;
  color blanco= #FFFFFF, negro= #000000, azul= #517BBE;

  Novela() {
    background(255*0.95);
    textSize (25);
    noStroke();
    for (int i=0; i<mensajesIntro.length; i++) {
      anchoTextoIntro[i] =textWidth(mensajesIntro[i]);
    }//end for
  }//end novela


  void mensajes() {
    posicionY= 100;
    mensajesDisplay (mujer, 1, unaLinea);
    interlineado (grande);
    mensajesDisplay (hombre, 2, unaLinea);
    interlineado (peque);
    mensajesDisplay (hombre, 3, unaLinea);
    interlineado (grande);
    mensajesDisplay (mujer, 4, unaLinea);
    interlineado (peque);
    mensajesDisplay (mujer, 5, unaLinea);
    interlineado (grande);
    mensajesDisplay (hombre, 6, unaLinea);
    interlineado (grande);
    mensajesDisplay (mujer, 7, unaLinea);
    interlineado (grande);
    mensajesDisplay (hombre, 8, unaLinea);
    interlineado (peque);
    mensajesDisplay (hombre, 9, unaLinea);
    interlineado (grande);
    mensajesDisplay (mujer, 10, unaLinea);
    interlineado (peque);
    mensajesDisplay (mujer, 11, unaLinea);
    interlineado (grande);
  }//end mensajes


  void estructura() {
    fill(azul); 
    rect(0, 0, width, 80);
    fill(blanco);
    text("Lucy", 30, 50);
    fill(blanco);   
    int borde =10;
    rect (width/6, (height-20)-unaLinea, width*0.8, unaLinea, borde);
    fill(255*0.2);
    rect (width/30, (height-20)-unaLinea, width*0.11, unaLinea, borde);
  }//end estructura


  void activadorJuego() {
    println(j.activadorJuego);
    if (mousePressed) {
      if (mouseX>width/30 && mouseX<(width/30)+width*0.11 && mouseY>height-20-unaLinea && mouseY<height-20) {
        j.activadorJuego=true;
        background(0);
      }//end if
    }//end if
  }//end boton

  void mensajesDisplay (float posicionX, int i, int alto) {
    int colorMensaje, colorTexto;
    if (posicionX == mujer) { 
      colorMensaje = azul;
      colorTexto = blanco;
    } else {
      colorMensaje = blanco;
      colorTexto = negro;
    }/* Si posicionX corresponde a los mensajes de la mujer: rectangulo azul, texto blanco.
     sino, entonces corresponde a los mensajes del hombre: rectangulo blaco, texto negro */

    //Margenes 
    int anchoExtraRectangulo = 25;
    int margenTexto = 10;

    //Calculo de posicionHombre
    float posicionHombre = 0, margenExtra = 0;
    if (posicionX == hombre) {
      posicionHombre = width-anchoTextoIntro[i]-anchoExtraRectangulo;
      posicionX = 0;
      margenTexto = 0;
      margenExtra = 13;
    }
    //Rectangulo
    fill (colorMensaje);
    rect (posicionX+(posicionHombre-margenExtra), posicionY, anchoTextoIntro[i]+anchoExtraRectangulo, alto, esquinas);

    //Texto
    float margenSuperior = 30;
    fill (colorTexto);
    text (mensajesIntro[i], posicionX+margenTexto+(posicionHombre), posicionY+margenSuperior);

    //Movimiento de Mensajes
    posicionY+=alto;
  }//end mensajesDisplay

  void interlineado(int espacio) {
    posicionY+= espacio;
  }//end interlineado
}//end Novela
