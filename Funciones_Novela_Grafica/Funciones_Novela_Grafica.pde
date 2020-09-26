String [] mensajesIntro = {"","Te quiero", "hola, cómo estás? cómo dormiste?", 
"Wow, te despertaste temprano", "bien y tu?", "estoy bien pero apenas pude dormir", "Pesadillas?",
"nonono, para nada","para nada"};
float [] anchoTextoIntro = new float [mensajesIntro.length];

//VARIABLES FUNDAMENTALES
int posicionY;
int unaLinea = 45;
int peque = 5, grande = 10;
int mujer = 20, hombre = 330, esquinas = 10;
color blanco= #FFFFFF, negro= #000000, azul= #517BBE; 


void setup() {
  size (800,600);
  textSize (25);
  noStroke();
  for (int i=0; i<mensajesIntro.length; i++) {
    anchoTextoIntro[i] =textWidth(mensajesIntro[i]);
  }
}


void draw() {
  posicionY= 20;
  
  mensajesIntroduccion (hombre, 1, unaLinea);
  interlineado (grande);
  mensajesIntroduccion (mujer, 2, unaLinea);
  interlineado (grande);
  mensajesIntroduccion (hombre, 3, unaLinea);
  interlineado (grande);
  mensajesIntroduccion (hombre, 4, unaLinea);
  interlineado (peque);
  mensajesIntroduccion (mujer, 5, unaLinea);
  interlineado (grande);
  mensajesIntroduccion (hombre, 6, unaLinea);
  interlineado (peque);
  mensajesIntroduccion (mujer, 7, unaLinea);
  interlineado (grande);
  mensajesIntroduccion (mujer, 8, unaLinea);
  interlineado (peque);
}





void mensajesIntroduccion (float posicionX, int i, int alto) {
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
}/* Si posiconX corresponde a los mensaje del hombre: Se activa "poscionHombre" y "margenExtra" (solo en rectangulo).
    "posicionHombre" es el resultado de: Ancho de la pantalla - Ancho del Texto - Ancho extra del rectangulo.
    Asi mismo, "posicionX" y "margenTexto" se anulanpara que no interfieran en la nueva posicion.
    Por ultimo, se resto a la nueva posicion, la mitad de "anchoExtraRectangulo" a traves la variable "margenExtra" para centrar el rectangulo. */
    
  //Rectangulo
  fill (colorMensaje);
  rect (posicionX+(posicionHombre-margenExtra), posicionY, anchoTextoIntro[i]+anchoExtraRectangulo, alto, esquinas);
  
  //Texto
  float margenSuperior = 30;
  fill (colorTexto);
  text (mensajesIntro[i], posicionX+margenTexto+(posicionHombre), posicionY+margenSuperior);

  //Movimiento de Mensajes
  posicionY+=alto;
}

  void interlineado(int espacio) {
  posicionY+= espacio;
}
