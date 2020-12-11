class Option {
  PFont fontGameOver;
  int tiempo_en_gameOver;
  int explosionX_1, explosionY_1;
  int explosionX_2, explosionY_2;
  boolean dead, borrar, reiniciar;
  boolean victoria_en_juego;

  int fundido_en_pantalla_de_inicio;

  float fundido_de_creditos, tiempo_de_creditos;
  float transparencia_1, transparencia_2;
  String descripcion_de_final;
  String nombre_de_final;
  boolean creditos;

  Option() {
    fontGameOver = loadFont("MyanmarText-Bold-48.vlw");
  }//end Next

  void instrucciones() {
    fill(NG.i.azul_oscuro); 
    rect(0, 0, width, NG.i.alto_barra_superior);
    fill(NG.i.blanco);
    text("Instrucciones", NG.i.posicionX_de_lucy, NG.i.posicionY_de_lucy);
    fill(80);
    text("presiona espacio continuar", NG.i.posicionX_barra_inferior + ((width/6)*0.1), NG.i.posicionY_boton_juego + ((height/8)*0.33));
    NG.m.posicionY = ((height/8)*1.1);
    NG.m.instrucciones(NG.m.hombre, 1, "Estas en un chat");
    NG.m.instrucciones(NG.m.mujer, 2, "tus respuestas guiarán la conversación");
    NG.m.instrucciones(NG.m.mujer, 2, "aumentado o disminuyendo el grado de ansiedad del personaje");
    NG.m.instrucciones(NG.m.hombre, 1, "Entre más o menos ansioso estes");
    NG.m.instrucciones(NG.m.hombre, 1, "se bloquearan ciertas elecciones");
    NG.m.instrucciones(NG.m.mujer, 1, "reducilá ganando el juego");
    NG.m.instrucciones(NG.m.mujer, 1, "o aumantalá perdiendo");
    NG.m.instrucciones(NG.m.hombre, 1, "Jugá en el rectangulo gris");
    NG.m.instrucciones(NG.m.hombre, 1, "te moves con las flechas o AWSD");
    NG.m.instrucciones(NG.m.mujer, 1, "reinicia la novela presionando 'r'");
    if (key== ' ') {
      fundido_en_pantalla_de_inicio += 2;
      fill(30, fundido_en_pantalla_de_inicio);
      rect(0, 0, width, height);
      if (fundido_en_pantalla_de_inicio >= 400) estado = "novela";
    }
  }


  void play_creditos() {
    if (!creditos) fundido_de_creditos = 0;
    if (creditos) {
      fill(30, fundido_de_creditos); 
      rect (0, 0, width, height);
      if (NG.e.seccion_de_capitulo[4] == "final_AB1"  ||  NG.e.seccion_de_capitulo[4] == "final_AB2") 
        fundido_de_creditos += 0.6;
      else fundido_de_creditos++;
    }
    if (fundido_de_creditos >= 300) NG.o.texto_de_creditos();
  }

  void texto_de_creditos() {
    textFont(NG.j.e.fontA);
    textAlign(CENTER);
    textSize(28);
    if (NG.e.seccion_de_capitulo[3] == "final_B1") {
      nombre_de_final = "Final [S]";
      descripcion_de_final = "[S]ilencio perpetuo";
    }
    if (NG.e.seccion_de_capitulo[3] == "final_B2") {
      nombre_de_final = "Final [M]";
      descripcion_de_final = "[M]entiras responsables";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_A1") {
      nombre_de_final = "Final [O]";
      descripcion_de_final = "Un olvido de 10 añ[o]s";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_A2") {
      nombre_de_final = "Final [P]";
      descripcion_de_final = "Como el [P]rimer día de una historia del pasado";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_A3") {
      nombre_de_final = "Final [F]";
      descripcion_de_final = "Una historia sin [F]in que debío terminar";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_A4") {
      nombre_de_final = "Final [A]";
      descripcion_de_final = "Felicidad, triteza y [A]ceptacion";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_AB1") {
      nombre_de_final = "Final [...]";
      descripcion_de_final = "Pareja pasada, amigos presentes, [...] futuros";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_AB2") {
      nombre_de_final = "Final [H]";
      descripcion_de_final = "[H]istoria de una pareja";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_AB3") {
      nombre_de_final = "Final [D]";
      descripcion_de_final = "[D]isculpas tardías";
    }
    if (NG.e.seccion_de_capitulo[4] == "final_AB4") {
      nombre_de_final = "Final [r]";
      descripcion_de_final = "Ansiedad, miedo y menti[r]as";
    }

    if (tiempo_de_creditos <= 250) transparencia_1+= 2;
    else transparencia_1-= 2;
    fill(NG.j.e.gris, transparencia_1);
    text (nombre_de_final, width/2, (height/2)-20);
    text (descripcion_de_final, width/2, (height/2)+20);

    if (tiempo_de_creditos >= 500) transparencia_2+= 2;
    if (tiempo_de_creditos >= 700) transparencia_2-= 4;
    fill(NG.j.e.gris, transparencia_2);
    text ("Creado por:", width/2, (height/2)-20);
    text ("Diego Jiménez", width/2, (height/2)+20);
    tiempo_de_creditos++;
  }


  void ganar_juego () {
    if (NG.j.e.victoria == true) {
      pantalla_de_victoria();
      if (keyPressed) {
        if (key=='s') reiniciar_juego();
        if (key=='n') {
          NG.e.ansiedad = 10;
          reiniciar_juego();
          estado = "novela";
        }
        NG.j.e.victoria = false;
        if (NG.e.ansiedad != 10) victoria_en_juego = false;
        if (estado == "novela") victoria_en_juego = true;
      }
    }
  }

  void gameOver_juego() {
    explosionGameOver();
    pantallaDerrota();
    tiempo_en_gameOver++;
    if (keyPressed) {
      if (key=='s') {
        reiniciar_juego();
        NG.e.ansiedad += 5;
      }
      if (key=='n') {
        reiniciar_juego();
        estado = "novela";
      }
      if (estado == "novela") victoria_en_juego = false;
    }
  }

  void pantalla_de_victoria() {
    fundido_en_pantalla_de_inicio += 2;
    fill(30, fundido_en_pantalla_de_inicio);
    rect(0, 0, width, height);
    if (fundido_en_pantalla_de_inicio >= 300) {
      fill(NG.j.e.gris);
      textSize(24);
      text("Alex logró tranquilzarse un poco", width/2, (height/2)-45);
      textFont(fontGameOver);
      textSize(18);
      text("quieres volver a jugar?", width/2, (height/2)-10);
      textSize(16);
      text("presiona 's' para reintentar", width/2, height*0.91);
      text("presiona 'n' para regresar a novela", width/2, height*0.95);
    }
    musica_de_juego.rewind();
    musica_de_juego.pause();
  }


  void reiniciar_novela() {
    if (keyPressed) if (key=='r') {
      //Posicion de mensajes
      NG.m.subir_chat_por_nuevo_mensaje = 0;
      NG.m.posicionY = (height/8)*1.1;
      NG.e.ansiedad = 0;

      //Numero de capitulo
      NG.e.numero_de_capitulo = 0;

      //Cronometros
      NG.d.capitulo0.cronometro1 = 76*60;
      NG.d.capitulo1.cronometro1 = 0;
      NG.d.capitulo2.cronometro1 = 0;
      NG.d.capitulo3.cronometro1 = 0;
      NG.d.capitulo4.cronometro1 = 0;

      //Respuestade de las elecciones
      for (int k = 0; k < 6; k++) NG.e.respuesta_capitulo_0 [k] = "opcion_b";
      NG.e.respuesta_capitulo_0 [6] = null;
      for (int k = 0; k < 7; k++) NG.e.respuesta_capitulo_1 [k] = null;
      for (int k = 0; k < 6; k++) NG.e.respuesta_capitulo_2 [k] = null;
      for (int k = 0; k < 6; k++) NG.e.respuesta_capitulo_3 [k] = null;
      NG.i.interfaz_de_eleccion = false;

      //Secciones de capitulos
      NG.e.seccion_de_capitulo[1] = null;
      NG.e.seccion_de_capitulo[2] = null;
      NG.e.seccion_de_capitulo[3] = null;
      NG.e.seccion_de_capitulo[4] = null;
    }
  }

  void reiniciar_juego() {
    //Enemigos
    for (int w=0; w<NG.j.e.NumeroEnemigos; w++) {
      NG.j.e.enemigoX[w]= 200;
      NG.j.e.enemigoY[w]= 0;
      NG.j.p.proyectilX[w] = -1;
      NG.j.p.proyectilY[w] = -1;
    }
    NG.j.e.tiempo_en_juego= 0;
    NG.j.c.contador_de_enemigos_muertos = 0;
    //Nave
    NG.j.n.naveX = width/2;
    NG.j.n.naveY = height/2;
    NG.j.b.balaX = NG.j.n.naveX;
    NG.j.b.balaY = NG.j.n.naveY;
    NG.j.n.vidas[3]= true;
    NG.j.n.vidas[2]= true;
    NG.j.n.vidas[1]= true;
    NG.j.c.impactoNave= 0;
    NG.j.n.speed=5;
    //gameOver
    explosionX_1 = 0;
    explosionY_1 = 0;
    explosionX_2 = 0 - 18;
    explosionY_2 = 0 - 18;
    dead = false;
  }

  void reducir_ansiedad () {
    if (victoria_en_juego) NG.e.ansiedad = 10;
    if (NG.e.ansiedad != 10) victoria_en_juego = false;
  }


  void explosionGameOver() {
    fill(NG.j.e.gris);
    ellipse(NG.j.n.naveX, NG.j.n.naveY, explosionX_1, explosionY_1);
    fill(30);
    ellipse(NG.j.n.naveX, NG.j.n.naveY, explosionX_2-18, explosionY_2-18);
    explosionX_1+=20;
    explosionY_1+=20;
    explosionX_2+=20;
    explosionY_2+=20;

    NG.j.n.speed=0;     
    if (explosionY_1>height*2) dead=true;
  }//end explosionGameOver


  void pantallaDerrota() {
    if (dead) {
      fill(NG.j.e.gris);
      textSize(24);
      text("Parece que ya has naturalizado el fracaso", width/2, (height/2)-45);
      textFont(fontGameOver);
      textSize(18);
      text("quieres volver a intentar?", width/2, (height/2)-10);
      textSize(16);
      text("presiona 's' para reintentar", width/2, height*0.91);
      text("presiona 'n' para regresar a novela", width/2, height*0.95);
      NG.j.c.contador_de_enemigos_muertos = 0;
      musica_de_juego.rewind();
      musica_de_juego.pause();
    }
  }


  void acelerar() {
    ////NG.e.ansiedad = 0;
    //println("a", NG.e.ansiedad);
    //println("c", NG.e.numero_de_capitulo);
    //if (keyPressed) if (key == 'a') {
    //  //Capitulo 0
    //  NG.e.respuesta_capitulo_0[1]= "opcion_b";
    //  NG.e.respuesta_capitulo_0[2]= "opcion_b";
    //  NG.e.respuesta_capitulo_0[3]= "opcion_b";
    //  NG.e.respuesta_capitulo_0[4]= "opcion_b";
    //  NG.e.respuesta_capitulo_0[5]= "opcion_b";
    //  NG.e.respuesta_capitulo_0[6]= "opcion_a";
    //  NG.d.capitulo0.cronometro1 = 200*60;

    //  //Capitulo 1
    //  NG.e.respuesta_capitulo_1[1]= "opcion_a";
    //  NG.e.respuesta_capitulo_1[2]= "opcion_a";
    //  NG.e.respuesta_capitulo_1[3]= "opcion_b";//Ruta_A
    //  NG.e.respuesta_capitulo_1[4]= "opcion_b";
    //  //NG.e.respuesta_capitulo_1[5]= "opcion_b";//Ruta_B
    //  NG.d.capitulo1.cronometro1 = 200*60;

    //  //Capitulo 2
    //  NG.e.respuesta_capitulo_2[1]= "opcion_a";
    //  NG.e.respuesta_capitulo_2[2]= "opcion_b";//ruta_A y ruta_A_B
    //  //NG.e.respuesta_capitulo_2[3]= "opcion_a";//ruta_B
    //  NG.d.capitulo2.cronometro1 = 200*60;

    ////Capitulo 3
    //NG.e.respuesta_capitulo_3[1]= "opcion_b";
    //NG.e.respuesta_capitulo_3[2]= "opcion_b";//final_A1, A2, AB1, AB2
    ////NG.e.respuesta_capitulo_3[3]= "opcion_b";//final_A3, A4, AB3, AB4
    //NG.d.capitulo3.cronometro1 = 200*60;
    //}
  }//end void acelerar
}//end Clase opciones
