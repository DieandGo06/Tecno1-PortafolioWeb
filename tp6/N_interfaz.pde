class Interfaz {
  //Elecciones
  boolean interfaz_de_eleccion;
  float posicionY_texto_de_eleccion_a;
  float posicionY_texto_de_eleccion_b;

  //Botones de eleccion
  boolean boton_a;
  boolean boton_b;

  //Barra superior
  float alto_barra_superior;
  float posicionX_de_lucy;
  float posicionY_de_lucy;
  float ancho_barra_inferior;

  //Barra inferior
  float alto_barra_inferior;
  float posicionX_barra_inferior;
  float ancho_de_barra_inferior;
  float borde;

  //Cubre mensaje/fondo falso
  float posicionY_cubre_mensaje;
  float alto_cubre_mensaje;

  //Boton juego
  float posicionX_boton_juego;
  float posicionY_boton_juego;
  float ancho_del_boton_juego;
  float alto_del_boton_juego;

  //eleccion
  float espacio_entre_elecciones;
  float posicionY_eleccion_a;
  float posicionY_eleccion_b;
  float posicionY_fondo_de_eleccion;

  //Fundido_de_pantalla
  float transparencia;
  int tiempo_de_fundido;
  boolean fundido_de_pantalla;

  //Colores
  float gris_oscuro, fondo_novela;
  color blanco;  
  color azul_claro, azul_oscuro;
  color color_texto_a;
  color color_texto_b;


  Interfaz () {
    //Colores
    blanco= #FFFFFF; 
    azul_claro = #6393E0;
    azul_oscuro = #3F5D8E;
    gris_oscuro = 255*0.2;
    fondo_novela= 255*0.92;
  }//end Interfaz


  void activar_botones() {
    //Las booleans, en "N_eleccion" desactivar o activar los botones segun el nivel de ansiedad
    if (mousePressed) {
      if (boton_a) {
        if (mouseX>posicionX_barra_inferior && mouseX<ancho_barra_inferior && mouseY>posicionY_eleccion_a && mouseY<posicionY_eleccion_a + alto_barra_inferior) {
          mantener_eleccion_a();
          interfaz_de_eleccion=false;
        }
      }
      if (boton_b) {
        if (mouseX>posicionX_barra_inferior && mouseX<ancho_barra_inferior && mouseY>posicionY_eleccion_b && mouseY<posicionY_eleccion_b + alto_barra_inferior) {
          mantener_eleccion_b();
          interfaz_de_eleccion=false;
        }
      }
    }//end mousePressed
  }


  void mantener_eleccion_a() {
    NG.e.respuesta_capitulo_0[NG.e.numero_de_eleccion_capitulo[0]] = "opcion_a";
    NG.e.respuesta_capitulo_1[NG.e.numero_de_eleccion_capitulo[1]] = "opcion_a";
    NG.e.respuesta_capitulo_2[NG.e.numero_de_eleccion_capitulo[2]] = "opcion_a";
    NG.e.respuesta_capitulo_3[NG.e.numero_de_eleccion_capitulo[3]] = "opcion_a";
  }

  void mantener_eleccion_b() {
    NG.e.respuesta_capitulo_0[NG.e.numero_de_eleccion_capitulo[0]] = "opcion_b";
    NG.e.respuesta_capitulo_1[NG.e.numero_de_eleccion_capitulo[1]] = "opcion_b";
    NG.e.respuesta_capitulo_2[NG.e.numero_de_eleccion_capitulo[2]] = "opcion_b";
    NG.e.respuesta_capitulo_3[NG.e.numero_de_eleccion_capitulo[3]] = "opcion_b";
  }



  void display_interfaz_de_novela() {
    datos_y_calculos_de_interfaz();
    //Barra superior
    fill(azul_oscuro); 
    rect(0, 0, width, alto_barra_superior);
    fill(blanco);
    text("Lucy", posicionX_de_lucy, posicionY_de_lucy);
    //Barra inferior
    fill(blanco);   
    rect (posicionX_barra_inferior, posicionY_boton_juego, ancho_barra_inferior, alto_barra_inferior, borde);
    //Boton_juego
    fill(gris_oscuro);
    rect (posicionX_boton_juego, posicionY_boton_juego, ancho_del_boton_juego, alto_barra_inferior, borde);
    imageMode(CENTER);
    image(NG.j.n.nave, posicionX_boton_juego + (ancho_del_boton_juego/2)+2, posicionY_boton_juego + (alto_barra_inferior/2), (width/6)*0.215, (height/8)*0.3);
    NG.i.fundido_juego();
    NG.o.play_creditos();
  }


  void fondo_falso () {//Rectangulo inferior cubre mensajes
    fill(fondo_novela);
    rect (0, posicionY_cubre_mensaje, width, alto_cubre_mensaje);
  }


  void display_interfaz_de_eleccion() {
    if (interfaz_de_eleccion == true) {
      fill(azul_oscuro);
      rect (0, posicionY_fondo_de_eleccion, width, (height/8)*2.5);
      fill(azul_claro);   
      rect (posicionX_barra_inferior, posicionY_eleccion_a, ancho_barra_inferior, alto_barra_inferior, borde);
      rect (posicionX_barra_inferior, posicionY_eleccion_b, ancho_barra_inferior, alto_barra_inferior, borde);    
      NG.m.subir_chat_por_nuevo_mensaje += height - posicionY_fondo_de_eleccion - (NG.m.alto_de_una_linea*2) + ((height/8)*0.1);
    }
  }

  void texto_de_eleccion(String texto_a, String texto_b) {
    if (interfaz_de_eleccion == true) {
      fill(blanco);//para evitar errores al adelantar el tiempo
      fill(color_texto_a);
      text (texto_a, posicionX_barra_inferior + NG.m.sangria, posicionY_texto_de_eleccion_a);
      fill(color_texto_b);
      text (texto_b, posicionX_barra_inferior + NG.m.sangria, posicionY_texto_de_eleccion_b);
      if (boton_a == false  ||  boton_b == false) fill(#808080);
      if (boton_a == false) rect (NG.i.posicionX_barra_inferior, NG.i.posicionY_eleccion_a, NG.i.ancho_barra_inferior, NG.i.alto_barra_inferior, NG.i.borde);
      if (boton_b == false) rect (NG.i.posicionX_barra_inferior, NG.i.posicionY_eleccion_b, NG.i.ancho_barra_inferior, NG.i.alto_barra_inferior, NG.i.borde);
    }
  }


  void boton_juego() {
    if (mousePressed) 
      if (mouseX>posicionX_boton_juego && mouseX<ancho_del_boton_juego && mouseY>posicionY_boton_juego && mouseY<alto_del_boton_juego) 
        estado = "juego";
  }//end boton_juego


  void fundido_juego() {
    if (fundido_de_pantalla==true) {
      transparencia= constrain(transparencia, 0, 255);
      fill(30, transparencia); 
      rect (0, 0, width, height);
      transparencia++;
      tiempo_de_fundido++;
    }
    if (tiempo_de_fundido>=420) transparencia = 0;
    if (tiempo_de_fundido==420) estado = "juego";
  }//end fundido_de_pantalla


  void propiedades_de_novela() {
    rectMode(CORNER);
    textAlign(LEFT);
    textFont(NG.font_novela);
  }



  void datos_y_calculos_de_interfaz() {
    //Barra superior
    alto_barra_superior = (height/8)*0.8;
    posicionX_de_lucy = (width/6)*0.2;
    posicionY_de_lucy = (height/8)*0.5;

    //barra inferior
    alto_barra_inferior = (height/8)*0.50;//Variable fundamental
    posicionX_barra_inferior = width/6;
    ancho_barra_inferior = width*0.8;
    borde = (width/6)*0.1;

    //Cubre mensajes
    posicionY_cubre_mensaje = (height/8)*7.1;
    alto_cubre_mensaje = (height/8)*1.5;

    //boton_juego
    posicionX_boton_juego = (width/6)*0.2;
    posicionY_boton_juego = ((height/8)*7.8) - alto_barra_inferior;
    ancho_del_boton_juego = posicionX_boton_juego + (width/6)*0.45;
    alto_del_boton_juego = posicionY_boton_juego + alto_barra_inferior;

    //elecciones
    espacio_entre_elecciones = (height/8)*0.6;
    posicionY_eleccion_b = posicionY_boton_juego - espacio_entre_elecciones - ((height/8)*0.1);
    posicionY_eleccion_a = posicionY_eleccion_b - espacio_entre_elecciones;
    posicionY_fondo_de_eleccion = posicionY_eleccion_a -((height/8)*0.2);
    posicionY_texto_de_eleccion_a = posicionY_eleccion_a + ((height/8)*0.33);
    posicionY_texto_de_eleccion_b = posicionY_eleccion_b + ((height/8)*0.33);
  }
}//end class Interfaz
