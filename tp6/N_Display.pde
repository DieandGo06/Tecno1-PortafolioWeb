class display { //<>//
  Capitulo0 capitulo0;
  Capitulo1 capitulo1;
  Capitulo2 capitulo2;
  Capitulo3 capitulo3;
  Capitulo4 capitulo4;

  display () {
    capitulo0 = new Capitulo0();
    capitulo1 = new Capitulo1();
    capitulo2 = new Capitulo2();
    capitulo3 = new Capitulo3();
    capitulo4 = new Capitulo4();
  }

  void display_capitulo0() {
    NG.d.capitulo0.primera_pantalla();
    NG.d.capitulo0.introduccion();
  }
  void display_capitulo1() {
    if (NG.e.seccion_de_capitulo[1] == "ruta_A") NG.d.capitulo1.ruta_A();
    if (NG.e.seccion_de_capitulo[1] == "ruta_B") NG.d.capitulo1.ruta_B();
  }
  void display_capitulo2() {
    if (NG.e.seccion_de_capitulo[2] == "ruta_A_left") NG.d.capitulo2.ruta_A_left();
    if (NG.e.seccion_de_capitulo[2] == "ruta_A_B") NG.d.capitulo2.ruta_A_B();
    if (NG.e.seccion_de_capitulo[2] == "ruta_B_right") NG.d.capitulo2.ruta_B_right();
  }
  void display_capitulo3() {
    if (NG.e.seccion_de_capitulo[3] == "ruta_A_left_left") NG.d.capitulo3.ruta_A_left_left();
    if (NG.e.seccion_de_capitulo[3] == "ruta_A_left_right") NG.d.capitulo3.ruta_A_left_right();
    if (NG.e.seccion_de_capitulo[3] == "ruta_A_B_left") NG.d.capitulo3.ruta_A_B_left();
    if (NG.e.seccion_de_capitulo[3] == "ruta_A_B_right") NG.d.capitulo3.ruta_A_B_right();
    if (NG.e.seccion_de_capitulo[3] == "final_B1") NG.d.capitulo3.final_B1();
    if (NG.e.seccion_de_capitulo[3] == "final_B2") NG.d.capitulo3.final_B2();
  }
  void display_capitulo4() {
    if (NG.e.seccion_de_capitulo[4] == "final_A1") NG.d.capitulo4.final_A1();
    if (NG.e.seccion_de_capitulo[4] == "final_A2") NG.d.capitulo4.final_A2();
    if (NG.e.seccion_de_capitulo[4] == "final_A3") NG.d.capitulo4.final_A3();
    if (NG.e.seccion_de_capitulo[4] == "final_A4") NG.d.capitulo4.final_A4();
    if (NG.e.seccion_de_capitulo[4] == "final_AB1") NG.d.capitulo4.final_AB1();
    if (NG.e.seccion_de_capitulo[4] == "final_AB2") NG.d.capitulo4.final_AB2();
    if (NG.e.seccion_de_capitulo[4] == "final_AB3") NG.d.capitulo4.final_AB3();
    if (NG.e.seccion_de_capitulo[4] == "final_AB4") NG.d.capitulo4.final_AB4();
  }
}//end class display

/*
 DESPLIEGUE DE MENSAJES
 Los mensajes se despliegan gracias la metodo "cronometro" y "nuevo_disparador".
 "nuevo_disparador" se encuentra en "N_Mensajes > void contar_mensajes" la cual es llamada por "void display_mensajes".
 "tiempo_extra" opera dentro "nuevo_disparador" e incrementa el tiempo que tarda el siguiente mensaje en desplegarse, sin embargo...
 como "nuevo_disparador" esta inserto en cada mensaje, al dar un valor a tiempo extra, no afectara al mensaje que tiene abajo sino al siguiente.
 IMPORTANTE: disparador_nuevo(); ha de estar antes del primer mensaje de una ruta o tras una eleccion.
 
 ELECCIONES Y CAMBIO DE ELECCIONES
 La ultima eleccion de todas las rutas indican la nueva ruta a seguir.
 Asi mismo, cada eleccion, sea principal o secunadria se enumeran de forma consecutiva.
 El numero de cada eleccion se ve en el primer parametro de "seleccionar_eleccion(num, x, x)"
 IMPORATNTE: Tras una eleccion principal, para evitar que cambie con las proximas elecciones, se debe cambiar el numero de elecciona uno...
 cuyo resultado no haga nada. Para un ejemplo, ver la ultima eleccion de la introduccion.
 */






//------------------------------------------------------------------------------------------------ CAPITULO 0
class Capitulo0 {
  int num_cap = 0;
  int x100 = (width/6);
  float hombre = x100*3.3;//330
  float mujer =  x100*0.3;//30  
  float tiempo, cronometro1, cronometro2;
  float disparador, tiempo_entre_mensajes;
  float tiempo_extra;

  void cronometro() {
    float limite_de_cronometro = cronometro2 + tiempo_entre_mensajes;
    if (NG.i.interfaz_de_eleccion == false) cronometro2 = cronometro1;
    if (NG.i.interfaz_de_eleccion == true ) cronometro1 = constrain(cronometro1, 0, limite_de_cronometro);
    tiempo = cronometro1/60;
    cronometro1++;
  }

  void nuevo_disparador() {
    tiempo_entre_mensajes = 1.5;
    int tiempo_del_primer_mensaje = 8;
    disparador = (tiempo_entre_mensajes * NG.m.numero_de_mensaje_capitulo[num_cap]) + tiempo_del_primer_mensaje + tiempo_extra;
  }

  void seleccionar_eleccion(int p_numero_de_eleccion, String p_textoA, String p_textoB) {
    NG.e.numero_de_eleccion_capitulo[num_cap] = p_numero_de_eleccion; 
    NG.e.activar_eleccion(num_cap, disparador, tiempo, tiempo_entre_mensajes);
    NG.i.texto_de_eleccion(p_textoA, p_textoB);
  }



  //----------------------------------------------------------------------------------  primera_pantalla  ----------------------------------------------------------------------------------
  void primera_pantalla() {
    NG.m.mensaje_primera_pantalla = 1;    

    //Primer mensaje
    NG.m.posicionX (hombre);
    NG.m.calcular_alto_del_rectangulo(1);
    NG.m.dibujar_mensaje (NG.g.cap0.primera_pantalla[NG.m.mensaje_primera_pantalla], NG.g.cap0.ancho_primera_pantalla[NG.m.mensaje_primera_pantalla]);  
    NG.m.contar_mensajes_sin_movimiento ();

    //(posicionX, numero_de_lineas)
    NG.m.primera_pantalla(mujer, 1);
    NG.m.primera_pantalla(mujer, 3);
    NG.m.primera_pantalla(hombre, 1);
    NG.m.primera_pantalla(hombre, 1);
    NG.m.primera_pantalla(mujer, 1);
    NG.m.primera_pantalla(mujer, 1);
    NG.m.primera_pantalla(mujer, 1);
    NG.m.primera_pantalla(hombre, 1);
    NG.m.primera_pantalla(hombre, 1);
  }


  //----------------------------------------------------------------------------------  introduccion  ----------------------------------------------------------------------------------
  void introduccion() {
    //Solo se usan 1 vez.
    NG.m.subir_chat_por_nuevo_mensaje = 0;
    NG.e.ansiedad = 0;

    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "introduccion";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);
    println("d", disparador);
    println("t", tiempo);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Que haces despierta tan temprano?";
      String textoB = "Wow, te despertaste temprano";      
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 0);
      NG.e.respuesta(NG.e.numero_de_capitulo, 2, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_0[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_0[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Pensamientos, dejenla dormir!";
        String textoB = "En que pensabas?";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_0[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_0[2] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "Yaaaaaaaaassssss";
        String textoB = "No, no quiero de hablar contigo";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 1, 1);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_0[3] == "opcion_a"  ||  NG.e.respuesta_capitulo_0[3] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      //if (tiempo >= disparador) {//Juego
      //  NG.i.fundido_de_pantalla=true;
      //  if (estado=="juego") NG.i.fundido_de_pantalla=false;
      //}

      if (tiempo >= disparador) {
        int num_eleccion = 4;
        String textoA = "";
        String textoB = "Hi, again";
        seleccionar_eleccion(4, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, -1, -1);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_0[4] == "opcion_a"  ||  NG.e.respuesta_capitulo_0[4] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);//Mensaje que se eliminara
      if (tiempo >= disparador) NG.m.eliminar_mensaje(mujer, 1);//Mensaje eliminado

      if (tiempo >= disparador) {
        int num_eleccion = 5;
        String textoA = "Puede ser mas tarde si quieres";
        String textoB = "Paso algo?";
        seleccionar_eleccion(5, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_0[5] == "opcion_a"  ||  NG.e.respuesta_capitulo_0[5] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      //Al cambiar de seccion, se debe cambiar el "numero de eleccion" fuera del "if"
      if (tiempo >= disparador) {
        int num_eleccion = 6;
        String textoA = "Es del frances";
        String textoB = "Amor, estas bien? que paso?";
        seleccionar_eleccion(6, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 15, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 7;
      //Evita que la eleccion se mantenga activa a cambios en la siguiente seccion
    }
  }//end void introduccion
}//end class Capitulo0










//------------------------------------------------------------------------------------------------ CAPITULO 1
class Capitulo1 {
  int num_cap = 1;//NUMERO DE CAPITULO
  int x100 = (width/6);
  float hombre = x100*3.3;//330
  float mujer =  x100*0.3;//30  
  float tiempo, cronometro1, cronometro2;
  float disparador, tiempo_entre_mensajes;
  float tiempo_extra;

  void cronometro() {
    float limite_de_cronometro = cronometro2 + tiempo_entre_mensajes;
    if (NG.i.interfaz_de_eleccion == false) cronometro2 = cronometro1;
    if (NG.i.interfaz_de_eleccion == true ) cronometro1 = constrain(cronometro1, 0, limite_de_cronometro);
    tiempo = cronometro1/60;
    cronometro1++;
  }

  void nuevo_disparador() {
    tiempo_entre_mensajes = 1.5;
    int tiempo_del_primer_mensaje = 1;
    disparador = (tiempo_entre_mensajes * NG.m.numero_de_mensaje_capitulo[num_cap]) + tiempo_del_primer_mensaje + tiempo_extra;
  }

  void seleccionar_eleccion(int p_numero_de_eleccion, String p_textoA, String p_textoB) {
    NG.e.numero_de_eleccion_capitulo[num_cap] = p_numero_de_eleccion; 
    NG.e.activar_eleccion(num_cap, disparador, tiempo, tiempo_entre_mensajes);
    NG.i.texto_de_eleccion(p_textoA, p_textoB);
  }


  //-------------------------------------------------------------------------------------  ruta_A  -------------------------------------------------------------------------------------
  void ruta_A() {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Me lo imaginaba";
      String textoB = "Claro, no soy estupido";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 10);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }

    if (NG.e.respuesta_capitulo_1[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      tiempo_extra = 4;

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Amor, responde por favor";
        String textoB = "Fue desde el primer día, verdad?";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 5);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 2, textoB, "opcion_b");
      }
    }

    if (NG.e.respuesta_capitulo_1[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[2] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "Mal";
        String textoB = "Como se llama?";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, -10, 10);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 4;
    }
  }//end Ruta_A


  //-------------------------------------------------------------------------------------  ruta_B  -------------------------------------------------------------------------------------
  void ruta_B() {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_B";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Estas bromeando, no?";
      String textoB = "Lo conozco?";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 5);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_1[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Sabes que no me gustan estas bromas";
        String textoB = "Luna se siente traicionada";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 2, "Sabes que no me gusta que bromees con eso", "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_1[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[2] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      tiempo_extra = 4;
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "Desde cuando me mientes?";
        String textoB = "*No responder*";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 10, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_1[3] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[3] == "opcion_b") {
      tiempo_extra = 8;
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 4;
        String textoA = "Solo dos semanas!?";
        String textoB = "*No responder*";
        seleccionar_eleccion(4, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 10, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }

    if (NG.e.respuesta_capitulo_1[4] == "opcion_a"  ||  NG.e.respuesta_capitulo_1[4] == "opcion_b") {
      tiempo_extra = 11;
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      tiempo_extra = 14;
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 5;
        String textoA = "Como se llama?";
        String textoB = "No responder";
        seleccionar_eleccion(5, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 10, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 6;
    }
  }//end Ruta_B
}//end class Capitulo1










//------------------------------------------------------------------------------------------------ CAPITULO 2
class Capitulo2 {
  int num_cap = 2;//NUMERO DE CAPITULO
  int x100 = (width/6);
  float hombre = x100*3.3;//330
  float mujer =  x100*0.3;//30  
  float tiempo, cronometro1, cronometro2;
  float disparador, tiempo_entre_mensajes;
  float tiempo_extra;

  void cronometro() {
    float limite_de_cronometro = cronometro2 + tiempo_entre_mensajes;
    if (NG.i.interfaz_de_eleccion == false) cronometro2 = cronometro1;
    if (NG.i.interfaz_de_eleccion == true ) cronometro1 = constrain(cronometro1, 0, limite_de_cronometro);
    tiempo = cronometro1/60;
    cronometro1++;
  }

  void nuevo_disparador() {
    tiempo_entre_mensajes = 1.5;
    int tiempo_del_primer_mensaje = 1;
    disparador = (tiempo_entre_mensajes * NG.m.numero_de_mensaje_capitulo[num_cap]) + tiempo_del_primer_mensaje + tiempo_extra;
  }

  void seleccionar_eleccion(int p_numero_de_eleccion, String p_textoA, String p_textoB) {
    NG.e.numero_de_eleccion_capitulo[num_cap] = p_numero_de_eleccion; 
    NG.e.activar_eleccion(num_cap, disparador, tiempo, tiempo_entre_mensajes);
    NG.i.texto_de_eleccion(p_textoA, p_textoB);
  }


  //-------------------------------------------------------------------------------------  ruta_A_left  -------------------------------------------------------------------------------------
  void ruta_A_left () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_left";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);


    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Mintiendome";
      String textoB = "Con lo nuestro?";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 10, 0);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_2[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_2[1] == "opcion_b") {
      tiempo_extra = 4;
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Es algo serio?";
        String textoB = "Como te sientes?";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 3;
    }
  }//end ruta_A_left



  //-------------------------------------------------------------------------------------  ruta_A_B  -------------------------------------------------------------------------------------
  void ruta_A_B () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_B";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);


    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Te gusta?";
      String textoB = "Ahora te gusta mas el?";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 5, 15);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_2[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_2[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);      
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);      
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);     

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Disculpa";
        String textoB = "Es el alto de la foto?";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, -10, 20);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 3;
    }
  }//end ruta_A_B



  //-------------------------------------------------------------------------------------  ruta_B_right  -------------------------------------------------------------------------------------
  void ruta_B_right () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_B_right";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);


    tiempo_extra = 4;
    nuevo_disparador();
    tiempo_extra = 5;
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "*No responder*";
      String textoB = "No me llames asi";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 5);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_2[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_2[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "*No responder*";
        String textoB = "No quiero hablar";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 5);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_2[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_2[2] == "opcion_b") {
      nuevo_disparador();
      tiempo_extra = 9;
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);  
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "*No responder*";
        String textoB = "*Bloquear*";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 4;
    }
  }//end ruta_B_right
}//end class Capitulo 2










//------------------------------------------------------------------------------------------------ CAPITULO 3
class Capitulo3 {
  int num_cap = 3;//NUMERO DE CAPITULO
  int x100 = (width/6);
  float hombre = x100*3.3;//330
  float mujer =  x100*0.3;//30  
  float tiempo, cronometro1, cronometro2;
  float disparador, tiempo_entre_mensajes;
  float tiempo_extra;

  void cronometro() {
    float limite_de_cronometro = cronometro2 + tiempo_entre_mensajes;
    if (NG.i.interfaz_de_eleccion == false) cronometro2 = cronometro1;
    if (NG.i.interfaz_de_eleccion == true ) cronometro1 = constrain(cronometro1, 0, limite_de_cronometro);
    tiempo = cronometro1/60;
    cronometro1++;
  }

  void nuevo_disparador() {
    tiempo_entre_mensajes = 1.5;
    int tiempo_del_primer_mensaje = 1;
    disparador = (tiempo_entre_mensajes * NG.m.numero_de_mensaje_capitulo[num_cap]) + tiempo_del_primer_mensaje + tiempo_extra;
  }

  void seleccionar_eleccion(int p_numero_de_eleccion, String p_textoA, String p_textoB) {
    NG.e.numero_de_eleccion_capitulo[num_cap] = p_numero_de_eleccion; 
    NG.e.activar_eleccion(num_cap, disparador, tiempo, tiempo_entre_mensajes);
    NG.i.texto_de_eleccion(p_textoA, p_textoB);
  }



  //-------------------------------------------------------------------------------------  ruta_A_left_left  -------------------------------------------------------------------------------------
  void ruta_A_left_left () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_left_left";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);
  
    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);  
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);    
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "No te da miedo?";
      String textoB = "Pero temes";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 5);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_3[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[1] == "opcion_b") {
      nuevo_disparador();
      tiempo_extra = 2;
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);     
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);    
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      tiempo_extra = 6;
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);  
      tiempo_extra = 8;
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);      
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);    
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "No estoy listo para esta conversación";
        String textoB = "Te sigo extrañando igual";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 2, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 3;
    }
  }//end ruta_A_left_left



  //-------------------------------------------------------------------------------------  ruta_A_left_right  -------------------------------------------------------------------------------------
  void ruta_A_left_right () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_left_right";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);


    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Te quiero";
      String textoB = "Quisiera poder abrazarte";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 0);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_3[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Lo se";
        String textoB = "Maldito maduro";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_3[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[2] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "Te amo";
        String textoB = "Creo que deberias intentarlo...";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 4;
    }
  }//end ruta_A_left_right



  //-------------------------------------------------------------------------------------  ruta_A_B_left  -------------------------------------------------------------------------------------
  void ruta_A_B_left () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_B_left";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "En la mierda?";
      String textoB = "Culpable?";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 0, 10);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_3[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Creo que te entiendo";
        String textoB = "Lo hiciste, me mentiste";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 0);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 3;
    }
  }//end ruta_A_B_left



  //-------------------------------------------------------------------------------------  ruta_A_B_right  -------------------------------------------------------------------------------------
  void ruta_A_B_right () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "ruta_A_B_right";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    if (tiempo >= disparador) {
      int num_eleccion = 1;
      String textoA = "Cuantos años nos lleva?";
      String textoB = "Es el profesor, verdad?";
      seleccionar_eleccion(1, textoA, textoB);
      NG.e.determinar_ansiedad(num_eleccion, 10, 20);
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
      NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
    }


    if (NG.e.respuesta_capitulo_3[1] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[1] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 2;
        String textoA = "Joder, te conozco";
        String textoB = "Pensaste en mi?";
        seleccionar_eleccion(2, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 25, 25);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
    }


    if (NG.e.respuesta_capitulo_3[2] == "opcion_a"  ||  NG.e.respuesta_capitulo_3[2] == "opcion_b") {
      nuevo_disparador();
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
      tiempo_extra = 4;
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
      if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

      if (tiempo >= disparador) {
        int num_eleccion = 3;
        String textoA = "Disculpa";
        String textoB = "Cuentame, qué tal folla?";
        seleccionar_eleccion(3, textoA, textoB);
        NG.e.determinar_ansiedad(num_eleccion, 0, 100);
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoA, "opcion_a");
        NG.e.respuesta(NG.e.numero_de_capitulo, 1, textoB, "opcion_b");
      }
      NG.e.numero_de_eleccion_capitulo[num_cap] = 4;
    }
  }//end ruta_A_B_right



  //-------------------------------------------------------------------------------------  final_B1  -------------------------------------------------------------------------------------
  void final_B1 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_B1";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    tiempo_extra = 1;
    nuevo_disparador();
    tiempo_extra = 2;
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    tiempo_extra = 3;
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    tiempo_extra = 6;
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);

    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------  end final_B1  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_B2  -------------------------------------------------------------------------------------
  void final_B2 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_B2";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------  end final_B2  -------------------------------------------------------------------------------------
}//--------------------------------------------------------------------------------------  end CAPITULO 3










//------------------------------------------------------------------------------------------------ CAPITULO 4 
class Capitulo4 {
  int num_cap = 4;//NUMERO DE CAPITULO
  int x100 = (width/6);
  float hombre = x100*3.3;//330
  float mujer =  x100*0.3;//30  
  float tiempo, cronometro1, cronometro2;
  float disparador, tiempo_entre_mensajes;
  float tiempo_extra;

  void cronometro() {
    float limite_de_cronometro = cronometro2 + tiempo_entre_mensajes;
    if (NG.i.interfaz_de_eleccion == false) cronometro2 = cronometro1;
    if (NG.i.interfaz_de_eleccion == true ) cronometro1 = constrain(cronometro1, 0, limite_de_cronometro);
    tiempo = cronometro1/60;
    cronometro1++;
  }

  void nuevo_disparador() {
    tiempo_entre_mensajes = 1.5;
    int tiempo_del_primer_mensaje = 1;
    disparador = (tiempo_entre_mensajes * NG.m.numero_de_mensaje_capitulo[num_cap]) + tiempo_del_primer_mensaje + tiempo_extra;
  }

  void seleccionar_eleccion(int p_numero_de_eleccion, String p_textoA, String p_textoB) {
    NG.e.numero_de_eleccion_capitulo[num_cap] = p_numero_de_eleccion; 
    NG.e.activar_eleccion(num_cap, disparador, tiempo, tiempo_entre_mensajes);
    NG.i.texto_de_eleccion(p_textoA, p_textoB);
  }


  //-------------------------------------------------------------------------------------  final_A1  -------------------------------------------------------------------------------------
  void final_A1 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_A1";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_A1  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_A2  -------------------------------------------------------------------------------------
  void final_A2 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_A2";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_A2  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_A3  -------------------------------------------------------------------------------------
  void final_A3 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_A3";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_A3  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_A4  -------------------------------------------------------------------------------------
  void final_A4 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_A4";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_A4  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_AB1  -------------------------------------------------------------------------------------
  void final_AB1 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_AB1";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 3);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    //Inicia fundido
    if (tiempo >= disparador) NG.o.creditos = true;
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    //Termina fundido
  }//------------------------------------------------------------------------------------- end final_AB1  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_AB2  -------------------------------------------------------------------------------------
  void final_AB2 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_AB2";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    //Incia fundido
    if (tiempo >= disparador) NG.o.creditos = true;
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    //Termina fundido
  }//------------------------------------------------------------------------------------- end final_AB2  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_AB3  -------------------------------------------------------------------------------------
  void final_AB3 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_AB3";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 3);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_AB3  -------------------------------------------------------------------------------------



  //-------------------------------------------------------------------------------------  final_AB4  -------------------------------------------------------------------------------------
  void final_AB4 () {
    cronometro();
    NG.e.numero_de_capitulo = num_cap;
    NG.m.numero_de_mensaje_capitulo [num_cap] = 1;
    NG.e.seccion_de_capitulo[num_cap] = "final_AB4";
    tiempo_extra = 0; 
    println(NG.e.seccion_de_capitulo[num_cap]);

    nuevo_disparador();
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 2);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(hombre, 1);
    if (tiempo >= disparador) NG.m.display_mensaje(mujer, 1);
    nuevo_disparador();
    if (tiempo >= disparador) NG.o.creditos = true;
  }//------------------------------------------------------------------------------------- end final_AB4  -------------------------------------------------------------------------------------
}//end class Capitulo 4
