class Mensajes {
  //Varaibles de fundamentales
  float posicionX;
  float posicionY;
  int numero_de_lineas;

  //Contadores de mensaje
  int mensaje_primera_pantalla;
  int numero_de_mensaje_introduccion;
  int numero_de_mensaje_ruta_A;

  int [] numero_de_mensaje_capitulo = new int [5];

  //Variables del subir_chat_por_nuevo_interlineado
  float interlineado_chico, interlineado_grande;

  //Variables del movmiento_por_mensaje
  float subir_chat_por_nuevo_mensaje;
  float alto_de_una_linea;
  float alto_extra_por_linea ;

  //Variables del display
  float bordes;
  float sangria;
  float hombre, mujer;
  float alto_de_rectangulo;
  float margenX, margenY;
  float adicional_del_rectangulo;
  float posXmujer, anchoMujer, anchoHombre;

  //Variables del calculo_del_display
  float posicionX_del_texto;
  float posicionY_del_texto;
  float ancho_maximo_del_texto;
  float alto_del_texto;
  float posicionX_hombre;
  float ancho_del_rectangulo;
  float ancho_minimo_del_rect;

  //Colores
  color blanco, negro, azul;  
  float fondo;


  Mensajes() {
    //Posiciones 
    hombre = (width/6)*3.3;//330
    mujer = (width/6)*0.3;//30

    //Colores
    fondo= 255*0.95;
    azul= #5982C3;
    blanco= 255;
    negro= 20;

    //Interlineado 
    interlineado_chico = (width/6)*0.03;//3
    interlineado_grande = (width/6)*0.1;//10

    //Margenes 
    margenY = (width/6)*0.12;
    margenX = (width/6)*0.3;//30
    adicional_del_rectangulo = (width/6)*0.25;//25
    sangria = adicional_del_rectangulo/2;//12
    anchoMujer = (width/6)*3.30;
    anchoHombre = (width/6)*1.85;
    bordes = (width/6)*0.15;

    //subir_chat_por_nuevo_mensaje
    alto_de_una_linea = (height/8)*0.45;
    alto_extra_por_linea = (height/8)*0.32;

    //background(fondo);
    textSize(24);
  }//------------------------------------------- end Mensajes

  //---------------------------------------------------------------------------------Metodos para crear los mensajes--------------------------------------------------------------------------

  void display_mensaje(float p_persona, int p_numero_de_lineas) {
    sumar_interlineado(p_persona);
    subir_chat_por_nuevo_mensaje (p_numero_de_lineas, p_persona);
    posicionX (p_persona);
    calcular_alto_del_rectangulo(p_numero_de_lineas); 
    if (NG.e.numero_de_capitulo == 0) display_texto_0();
    if (NG.e.numero_de_capitulo == 1) display_texto_1();
    if (NG.e.numero_de_capitulo == 2) display_texto_2();
    if (NG.e.numero_de_capitulo == 3) display_texto_3();
    if (NG.e.numero_de_capitulo == 4) display_texto_4();
    contar_mensaje();
  } 


  void contar_mensaje () {
    if (NG.e.numero_de_capitulo == 0) {
      numero_de_mensaje_capitulo [0]++;
      NG.d.capitulo0.nuevo_disparador();
    } 
    if (NG.e.numero_de_capitulo == 1) {
      numero_de_mensaje_capitulo [1]++;
      NG.d.capitulo1.nuevo_disparador();
    }
    if (NG.e.numero_de_capitulo == 2) {
      numero_de_mensaje_capitulo [2]++;
      NG.d.capitulo2.nuevo_disparador();
    }
    if (NG.e.numero_de_capitulo == 3) {
      numero_de_mensaje_capitulo [3]++;
      NG.d.capitulo3.nuevo_disparador();
    }
    if (NG.e.numero_de_capitulo == 4) {
      numero_de_mensaje_capitulo [4]++;
      NG.d.capitulo4.nuevo_disparador();
    }
  }


  void display_texto_0() {
    int n_mensaje;
    if (NG.e.seccion_de_capitulo [0] == "introduccion") {
      n_mensaje = numero_de_mensaje_capitulo [0];
      dibujar_mensaje(NG.g.cap0.texto_introduccion[n_mensaje], NG.g.cap0.ancho_introduccion[n_mensaje]);
    }
  }

  void display_texto_1() {
    int n_mensaje;
    if (NG.e.seccion_de_capitulo [1] == "ruta_A") {
      n_mensaje = numero_de_mensaje_capitulo [1];
      dibujar_mensaje(NG.g.cap1.texto_ruta_A[n_mensaje], NG.g.cap1.ancho_ruta_A[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [1] == "ruta_B") {
      n_mensaje = numero_de_mensaje_capitulo [1];
      dibujar_mensaje(NG.g.cap1.texto_ruta_B[n_mensaje], NG.g.cap1.ancho_ruta_B[n_mensaje]);
    }
  }

  void display_texto_2() {
    int n_mensaje;
    if (NG.e.seccion_de_capitulo [2] == "ruta_A_left") {
      n_mensaje = numero_de_mensaje_capitulo [2];
      dibujar_mensaje(NG.g.cap2.texto_ruta_A_left[n_mensaje], NG.g.cap2.ancho_ruta_A_left[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [2] == "ruta_A_B") {
      n_mensaje = numero_de_mensaje_capitulo [2];
      dibujar_mensaje(NG.g.cap2.texto_ruta_A_B[n_mensaje], NG.g.cap2.ancho_ruta_A_B[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [2] == "ruta_B_right") {
      n_mensaje = numero_de_mensaje_capitulo [2];
      dibujar_mensaje(NG.g.cap2.texto_ruta_B_right[n_mensaje], NG.g.cap2.ancho_ruta_B_right[n_mensaje]);
    }
  }

  void display_texto_3() {
    int n_mensaje;
    if (NG.e.seccion_de_capitulo [3] == "ruta_A_left_left") {
      n_mensaje = numero_de_mensaje_capitulo [3];
      dibujar_mensaje(NG.g.cap3.texto_ruta_A_left_left[n_mensaje], NG.g.cap3.ancho_ruta_A_left_left[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [3] == "ruta_A_left_right") {
      n_mensaje = numero_de_mensaje_capitulo [3];
      dibujar_mensaje(NG.g.cap3.texto_ruta_A_left_right[n_mensaje], NG.g.cap3.ancho_ruta_A_left_right[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [3] == "ruta_A_B_left") {
      n_mensaje = numero_de_mensaje_capitulo [3];
      dibujar_mensaje(NG.g.cap3.texto_ruta_A_B_left[n_mensaje], NG.g.cap3.ancho_ruta_A_B_left[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [3] == "ruta_A_B_right") {
      n_mensaje = numero_de_mensaje_capitulo [3];
      dibujar_mensaje(NG.g.cap3.texto_ruta_A_B_right[n_mensaje], NG.g.cap3.ancho_ruta_A_B_right[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [3] == "final_B1") {
      n_mensaje = numero_de_mensaje_capitulo [3];
      dibujar_mensaje(NG.g.cap3.texto_final_B1[n_mensaje], NG.g.cap3.ancho_final_B1[n_mensaje]);
    }
  }

  void display_texto_4() {
    int n_mensaje;
    if (NG.e.seccion_de_capitulo [4] == "final_A1") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_A1[n_mensaje], NG.g.cap4.ancho_final_A1[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_A2") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_A2[n_mensaje], NG.g.cap4.ancho_final_A2[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_A3") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_A3[n_mensaje], NG.g.cap4.ancho_final_A3[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_A4") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_A4[n_mensaje], NG.g.cap4.ancho_final_A4[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_AB1") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_AB1[n_mensaje], NG.g.cap4.ancho_final_AB1[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_AB2") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_AB2[n_mensaje], NG.g.cap4.ancho_final_AB2[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_AB3") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_AB3[n_mensaje], NG.g.cap4.ancho_final_AB3[n_mensaje]);
    }
    if (NG.e.seccion_de_capitulo [4] == "final_AB4") {
      n_mensaje = numero_de_mensaje_capitulo [4];
      dibujar_mensaje(NG.g.cap4.texto_final_AB4[n_mensaje], NG.g.cap4.ancho_final_AB4[n_mensaje]);
    }
  }






  //------------------------------------------------------------Metodos de dibujo, calculo y movimientos para display_mensaje-----------------------------------------------------------

  void dibujar_mensaje (String texto, float ancho_del_texto) {  
    textAlign(LEFT);
    calcular_posiciones_de_display (ancho_del_texto);
    if (posicionX==hombre) {
      fill (blanco);//Rectangulo
      rect (posicionX_hombre, posicionY, ancho_del_rectangulo, alto_de_rectangulo, bordes, 0, bordes, bordes);
      fill (negro);//Texto
      text (texto, posicionX_del_texto, posicionY_del_texto, ancho_maximo_del_texto, alto_del_texto);
    }
    if (posicionX==mujer) {
      fill (azul);//Mensaje
      rect (posicionX, posicionY, ancho_del_rectangulo, alto_de_rectangulo, 0, bordes, bordes, bordes);
      fill (blanco);//Texto
      text (texto, posicionX_del_texto, posicionY_del_texto, ancho_maximo_del_texto, alto_del_texto);
    }//end if 
    separar_mensaje (alto_de_rectangulo);//separacion entre mensajes
  }//end void

  void posicion_Y_inicial() {
    posicionY = ((height/8)*1.1) - subir_chat_por_nuevo_mensaje;
  }

  void separar_mensaje(float p_alto_de_rect) {
    posicionY += p_alto_de_rect;
  }

  void calcular_posiciones_de_display (float ancho_del_texto) {
    if (posicionX==hombre) {
      posicionX_hombre = width - ancho_del_texto - adicional_del_rectangulo - margenX;
      ancho_del_rectangulo = ancho_del_texto+adicional_del_rectangulo;
      posicionX_del_texto = posicionX_hombre+sangria;
      posicionY_del_texto = posicionY+margenY;
      ancho_maximo_del_texto = posicionX_hombre+sangria+anchoHombre;
      alto_del_texto = posicionY+margenY+alto_de_rectangulo;
    }
    if (posicionX==mujer) {
      ancho_del_rectangulo = ancho_del_texto+adicional_del_rectangulo;
      posicionX_del_texto = posicionX+sangria;
      posicionY_del_texto = posicionY+margenY;
      ancho_maximo_del_texto = posicionX+sangria+anchoMujer;
      alto_del_texto = posicionY+margenY+alto_de_rectangulo;
    }
  }//end void 

  void posicionX (float p_posicionX) {
    posicionX = p_posicionX;
  }

  void sumar_interlineado (float p_mensaje_actual) {
    float mensaje_anterior = posicionX;
    if (p_mensaje_actual == mujer && mensaje_anterior == mujer  ||  p_mensaje_actual == hombre && mensaje_anterior == hombre)  posicionY+= interlineado_chico;
    if (p_mensaje_actual == mujer && mensaje_anterior == hombre  ||  p_mensaje_actual == hombre && mensaje_anterior == mujer)  posicionY+= interlineado_grande;
  }

  void calcular_alto_del_rectangulo(int p_numero_de_lineas) {
    if (p_numero_de_lineas == 1) alto_de_rectangulo = alto_de_una_linea;
    if (p_numero_de_lineas > 1) alto_de_rectangulo = alto_de_una_linea+(alto_extra_por_linea*(p_numero_de_lineas-1));
    numero_de_lineas = p_numero_de_lineas;
  }//end


  void subir_chat_por_nuevo_mensaje (float p_numero_de_lineas, float p_mensaje_actual) {//Se resta a "posicionY" en N_display, metodo: "pantalla inicial"
    float mensaje_anterior = posicionX;
    if (p_mensaje_actual == mujer && mensaje_anterior == mujer  ||  p_mensaje_actual == hombre && mensaje_anterior == hombre) {
      subir_chat_por_nuevo_mensaje += alto_de_una_linea + (alto_extra_por_linea*(p_numero_de_lineas-1)) + interlineado_chico;
    }
    if (p_mensaje_actual == mujer && mensaje_anterior == hombre  ||  p_mensaje_actual == hombre && mensaje_anterior == mujer) {
      subir_chat_por_nuevo_mensaje += alto_de_una_linea + (alto_extra_por_linea*(p_numero_de_lineas-1)) + interlineado_grande;
    }
  }







  //-------------------------------------------------------------------------Metodos para el display (casos particulares) ------------------------------------------------------------------

  //Estos metodos solo se se emplean para la pantalla inicial, ya que no continen ningun movimiento
  void primera_pantalla(float p_persona, int p_lineas) {
    sumar_interlineado(p_persona);
    posicionX (p_persona);
    calcular_alto_del_rectangulo(p_lineas);
    dibujar_mensaje (NG.g.cap0.primera_pantalla[mensaje_primera_pantalla], NG.g.cap0.ancho_primera_pantalla[mensaje_primera_pantalla]);
    contar_mensajes_sin_movimiento();
  }



  void eliminar_mensaje(float p_persona, int p_lineas) {
    posicionY-=alto_de_rectangulo;
    posicionX (p_persona);
    calcular_alto_del_rectangulo(p_lineas);
    display_texto_0();
    contar_mensaje();
  }


  void instrucciones(float p_persona, int p_lineas, String p_texto) {
    sumar_interlineado(p_persona);
    String texto = p_texto;
    float ancho_de_texto = textWidth(texto);
    ancho_de_texto  = constrain(ancho_de_texto, 0, (width/6)*3.9);
    posicionX (p_persona);
    calcular_alto_del_rectangulo(p_lineas);
    dibujar_mensaje (texto, ancho_de_texto);
    contar_mensajes_sin_movimiento();
  }


  void contar_mensajes_sin_movimiento() {
    mensaje_primera_pantalla++;
  }
}//end class
