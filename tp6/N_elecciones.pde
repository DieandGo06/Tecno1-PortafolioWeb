class Elecciones {

  int numero_de_capitulo;
  String [] seccion_de_capitulo = new String [5];

  int [] numero_de_eleccion_capitulo = new int [5];
  String [] respuesta_capitulo_0 = new String [8];
  String [] respuesta_capitulo_1 = new String [7];
  String [] respuesta_capitulo_2 = new String [6];
  String [] respuesta_capitulo_3 = new String [6];
  String [] respuesta_capitulo_4 = new String [6];
  //Siempre tiene que haber 1 respuesta demas, para usarla al cambiar de seccion

  int ansiedad;
  int ansiedad_a;
  int ansiedad_b;


  void activar_eleccion(int p_capitulo_numero, float p_disparador, float p_tiempo, float p_tiempo_entre_mensajes) {//"seccion_de_guion" y "numero_de_mensaje" se completan manualmente en "N_Display"
    String [] respuesta = new String [5];
    if (p_tiempo < (p_disparador + p_tiempo_entre_mensajes)) {
      if (p_capitulo_numero == 0) respuesta[0] = respuesta_capitulo_0 [numero_de_eleccion_capitulo[0]];
      if (p_capitulo_numero == 1) respuesta[1] = respuesta_capitulo_1 [numero_de_eleccion_capitulo[1]];
      if (p_capitulo_numero == 2) respuesta[2] = respuesta_capitulo_2 [numero_de_eleccion_capitulo[2]];
      if (p_capitulo_numero == 3) respuesta[3] = respuesta_capitulo_3 [numero_de_eleccion_capitulo[3]];
      if (p_capitulo_numero == 4) respuesta[4] = respuesta_capitulo_4 [numero_de_eleccion_capitulo[4]];
      desplegar_interfaz_de_eleccion();
      desbloquear_opciones();
      bloquear_elecciones();
    }
    if (respuesta[p_capitulo_numero] == "opcion_a"  &&  p_tiempo == p_disparador+1) ansiedad += ansiedad_a;
    if (respuesta[p_capitulo_numero] == "opcion_b"  &&  p_tiempo == p_disparador+1) ansiedad += ansiedad_b;
    if (respuesta[p_capitulo_numero] == "opcion_a"  ||  respuesta[p_capitulo_numero] == "opcion_b") contraer_interfaz_de_eleccion();
    activar_elecciones_centrales();
  }



  void activar_elecciones_centrales () {
    //Capitulo 0 to 1
    if (respuesta_capitulo_0 [6] == "opcion_a") seccion_de_capitulo[1] = "ruta_A";
    if (respuesta_capitulo_0 [6] == "opcion_b") seccion_de_capitulo[1] = "ruta_B";

    //Capitulo 1 to 2
    if (seccion_de_capitulo[1] == "ruta_A"  &&  respuesta_capitulo_1 [3] == "opcion_a") seccion_de_capitulo[2] = "ruta_A_left";
    if (seccion_de_capitulo[1] == "ruta_A"  &&  respuesta_capitulo_1 [3] == "opcion_b") seccion_de_capitulo[2] = "ruta_A_B";//ruta_a
    if (seccion_de_capitulo[1] == "ruta_B"  &&  respuesta_capitulo_1 [5] == "opcion_a") seccion_de_capitulo[2] = "ruta_A_B";//ruta_b
    if (seccion_de_capitulo[1] == "ruta_B"  &&  respuesta_capitulo_1 [5] == "opcion_b") seccion_de_capitulo[2] = "ruta_B_right";

    //Capitulo 2 to 3
    if (seccion_de_capitulo[2] == "ruta_A_left"   &&  respuesta_capitulo_2 [2] == "opcion_a") seccion_de_capitulo[3] = "ruta_A_left_left";
    if (seccion_de_capitulo[2] == "ruta_A_left"   &&  respuesta_capitulo_2 [2] == "opcion_b") seccion_de_capitulo[3] = "ruta_A_left_right";
    if (seccion_de_capitulo[2] == "ruta_A_B"      &&  respuesta_capitulo_2 [2] == "opcion_a") seccion_de_capitulo[3] = "ruta_A_B_left";
    if (seccion_de_capitulo[2] == "ruta_A_B"      &&  respuesta_capitulo_2 [2] == "opcion_b") seccion_de_capitulo[3] = "ruta_A_B_right";
    if (seccion_de_capitulo[2] == "ruta_B_right"  &&  respuesta_capitulo_2 [3] == "opcion_a") seccion_de_capitulo[3] = "final_B1";
    if (seccion_de_capitulo[2] == "ruta_B_right"  &&  respuesta_capitulo_2 [3] == "opcion_b") seccion_de_capitulo[3] = "final_B2";

    //Capitulo 3 to 4
    if (seccion_de_capitulo[3] == "ruta_A_left_left"    &&  respuesta_capitulo_3 [2] == "opcion_a") seccion_de_capitulo[4] = "final_A1";
    if (seccion_de_capitulo[3] == "ruta_A_left_left"    &&  respuesta_capitulo_3 [2] == "opcion_b") seccion_de_capitulo[4] = "final_A2";
    if (seccion_de_capitulo[3] == "ruta_A_left_right"   &&  respuesta_capitulo_3 [3] == "opcion_a") seccion_de_capitulo[4] = "final_A3";
    if (seccion_de_capitulo[3] == "ruta_A_left_right"   &&  respuesta_capitulo_3 [3] == "opcion_b") seccion_de_capitulo[4] = "final_A4";
    if (seccion_de_capitulo[3] == "ruta_A_B_left"   &&  respuesta_capitulo_3 [2] == "opcion_a") seccion_de_capitulo[4] = "final_AB1";
    if (seccion_de_capitulo[3] == "ruta_A_B_left"   &&  respuesta_capitulo_3 [2] == "opcion_b") seccion_de_capitulo[4] = "final_AB2";
    if (seccion_de_capitulo[3] == "ruta_A_B_right"  &&  respuesta_capitulo_3 [3] == "opcion_a") seccion_de_capitulo[4] = "final_AB3";
    if (seccion_de_capitulo[3] == "ruta_A_B_right"  &&  respuesta_capitulo_3 [3] == "opcion_b") seccion_de_capitulo[4] = "final_AB4";
  }



  void determinar_ansiedad(int p_num_eleccion, int p_ansiedad_a, int p_ansiedad_b) {
    if (numero_de_capitulo == 0) {
      if (respuesta_capitulo_0[p_num_eleccion] == "opcion_a") ansiedad += p_ansiedad_a;
      if (respuesta_capitulo_0[p_num_eleccion] == "opcion_b") ansiedad += p_ansiedad_b;
    }
    if (numero_de_capitulo == 1) {
      if (respuesta_capitulo_1[p_num_eleccion] == "opcion_a") ansiedad += p_ansiedad_a;
      if (respuesta_capitulo_1[p_num_eleccion] == "opcion_b") ansiedad += p_ansiedad_b;
    }
    if (numero_de_capitulo == 2) {
      if (respuesta_capitulo_2[p_num_eleccion] == "opcion_a") ansiedad += p_ansiedad_a;
      if (respuesta_capitulo_2[p_num_eleccion] == "opcion_b") ansiedad += p_ansiedad_b;
    }
    if (numero_de_capitulo == 3) {
      if (respuesta_capitulo_3[p_num_eleccion] == "opcion_a") ansiedad += p_ansiedad_a;
      if (respuesta_capitulo_3[p_num_eleccion] == "opcion_b") ansiedad += p_ansiedad_b;
    }
  }



  void bloquear_elecciones() {
    if (NG.e.numero_de_capitulo == 0) {
      if (ansiedad == 1) bloquear_opcion_a();
    }
    if (NG.e.numero_de_capitulo == 1) {
      if (seccion_de_capitulo[1] == "ruta_A"  &&  ansiedad >= 30) bloquear_opcion_a();
      if (seccion_de_capitulo[1] == "ruta_B"  &&  ansiedad >= 25) bloquear_opcion_b();
    }
    if (NG.e.numero_de_capitulo == 2) {
      // "ruta_A_left" sin bloqueos.
      if (seccion_de_capitulo[2] == "ruta_A_B"  &&  ansiedad >= 45) bloquear_opcion_a();
      if (seccion_de_capitulo[2] == "ruta_B_right"  &&  ansiedad >= 25) bloquear_opcion_a();
    }
    if (NG.e.numero_de_capitulo == 3) {
      if (seccion_de_capitulo[3] == "ruta_A_left_left"  &&  ansiedad >= 30) bloquear_opcion_a();
      //"ruta_A_left_right" sin bloques.
      if (seccion_de_capitulo[3] == "ruta_A_B_left"  &&  ansiedad >= 35) bloquear_opcion_a();
      if (seccion_de_capitulo[3] == "ruta_A_B_right"  &&  NG.e.respuesta_capitulo_3[2] != null  &&  ansiedad >= 35) bloquear_opcion_a();
        
      }
    }



    void respuesta(int p_capitulo_numero, int p_lineas, String texto, String opcion) {
      String respuesta = "";
      float mensaje_anterior = NG.m.posicionX;
      NG.i.propiedades_de_novela();
      if (p_capitulo_numero == 0) respuesta = respuesta_capitulo_0 [numero_de_eleccion_capitulo[0]];
      if (p_capitulo_numero == 1) respuesta = respuesta_capitulo_1 [numero_de_eleccion_capitulo[1]];
      if (p_capitulo_numero == 2) respuesta = respuesta_capitulo_2 [numero_de_eleccion_capitulo[2]];
      if (p_capitulo_numero == 3) respuesta = respuesta_capitulo_3 [numero_de_eleccion_capitulo[3]];
      if (p_capitulo_numero == 4) respuesta = respuesta_capitulo_4 [numero_de_eleccion_capitulo[4]];
      if (respuesta== opcion) {
        float ancho_de_texto= textWidth(texto);
        ancho_de_texto = constrain(ancho_de_texto, 0, (width/6)*3.9);
        NG.m.sumar_interlineado (NG.m.hombre);
        NG.m.posicionX (NG.m.hombre);
        NG.m.calcular_alto_del_rectangulo(p_lineas);
        if (mensaje_anterior == NG.m.mujer) {//si el mensaje anterior a la eleccion es de la mujer, aplica el interlineado chico dañando posicionY (error). Esto lo corrige, a medias.
          NG.m.posicionY-= NG.m.interlineado_grande - NG.m.interlineado_chico;
        }
        NG.m.subir_chat_por_nuevo_mensaje (NG.m.numero_de_lineas, NG.m.hombre);
        NG.m.dibujar_mensaje (texto, ancho_de_texto);
        NG.m.contar_mensaje ();
      }
    }//end respuesta_p1



  void desbloquear_opciones() {
    NG.i.color_texto_a = NG.i.blanco;
    NG.i.color_texto_b = NG.i.blanco;
    NG.i.boton_a = true;
    NG.i.boton_b = true;
  }

  void bloquear_opcion_a() {
    NG.i.color_texto_a = NG.i.blanco;
    NG.i.boton_a = false;
  }

  void bloquear_opcion_b() {
    NG.i.color_texto_a = NG.i.blanco;
    NG.i.boton_b = false;
  }


  void desplegar_interfaz_de_eleccion() {
    NG.i.display_interfaz_de_eleccion();
    NG.i.interfaz_de_eleccion = true;
    NG.i.activar_botones();
  }

  void contraer_interfaz_de_eleccion() {
    NG.i.interfaz_de_eleccion = false;
  }
}
