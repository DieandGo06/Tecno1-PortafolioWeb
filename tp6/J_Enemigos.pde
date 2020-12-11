class Enemigos {
  //Propiedades del Texto
  PFont fontA;
  int tamTexto;

  //Propiedades de los Enemigos
  int NumeroEnemigos = 105;
  float [] speedX = new float [NumeroEnemigos];
  float [] speedY = new float [NumeroEnemigos];
  float [] enemigoX = new float [NumeroEnemigos];
  float [] enemigoY = new float [NumeroEnemigos];
  float [] anchoTexto = new float [NumeroEnemigos];
  boolean [] mover = new boolean [NumeroEnemigos];
  boolean [] disparar = new boolean [NumeroEnemigos];
  boolean [] impacto = new boolean [NumeroEnemigos];
  boolean victoria;
  color gris = #dad5c6;


  String [] texto_de_enemigo = new String [100];
  int contador;
  int registro;
  int velocidad_de_spawn;
  int velocidad_de_spawn_nivel_1 = 60;
  int velocidad_de_spawn_nivel_2 = 40;
  int velocidad_de_spawn_nivel_3 = 30;
  float tiempo_en_juego; 

  Enemigos() {
    tamTexto = 30;
    fontA = loadFont("Candara-Light-48.vlw");
    for (int k=0; k<NumeroEnemigos; k++) {
      speedX[k]= random(-3, 4);
      speedY[k]= random(1, 4);
    }//determina la velocidad de los enemigos de forma aleatoria
  }

  void enemigoLineal(String texto, float x, float y, int n_enemigos) {
    propiedadesTexto(); 
    if (!mover[n_enemigos]) {    
      enemigoX[n_enemigos] = x;
      enemigoY[n_enemigos] = y;
    }
    if (!disparar[n_enemigos]) {
      NG.j.p.posicionInicial(x, y, n_enemigos);
    }    
    disparar(n_enemigos);
    moveLineal(n_enemigos);
    text(texto, enemigoX[n_enemigos], enemigoY[n_enemigos]); 
    anchoTexto [n_enemigos] = textWidth(texto);
    NG.j.p.disparoUnico(enemigoX[n_enemigos], enemigoY[n_enemigos], n_enemigos);
  }


  void moveLineal(int k) {
    mover[k]=true;
    enemigoX[k]+= speedX[k];
    enemigoY[k]+= speedY[k];
    rebote(k);
  }//end void


  void rebote(int k) {
    if (enemigoY[k]>height*0.4 || enemigoY[k]<-1) {
      speedY[k]*= -1;
    }
    if (enemigoX[k]<=width*0.1 || enemigoX[k]>= width-(width*0.1)) {
      speedX[k]*= -1;
      //Todos los enemigos tienen que inciar en enemigoY[k]=0, porque rebotan en -1.
    }
  }

  void propiedadesTexto() {
    fill(gris);
    textFont(fontA);
    textSize(tamTexto);
    textAlign(CENTER);
  }//end void

  void disparar(int k) {
    disparar[k]=true;
  }//end void




  //-------------------------------------------------------------------------------------NIVELES DEL VIDEJUEGO------------------------------------------------------------------------------------
  void agregar_enemigo (int n_primer_enemigo_del_grupo, int cantidad_de_enemigos, String texto) {
    float posicionX_inicial;
    for (int k = n_primer_enemigo_del_grupo; k < contador + cantidad_de_enemigos; k++) {
      if (tiempo_en_juego>= k * velocidad_de_spawn) {
        posicionX_inicial = random(width/6, (width/6)*5);
        enemigoLineal(texto, posicionX_inicial, 0, k);
      }
    }
  }
  //--------------------------------------------------------------------------------------------NIVEL_1-------------------------------------------------------------------------------------------
  void display_nivel_1_ansiedad_baja() {
    velocidad_de_spawn = velocidad_de_spawn_nivel_1;
    tiempo_en_juego++;
    int contador = 0; 
    
    agregar_enemigo(contador, contador = 5, "hola");
    agregar_enemigo(contador, contador = 8, "te extraño");
    agregar_enemigo(contador, contador = 12, "responde");
    agregar_enemigo(contador, contador = 16, "mirame");
    agregar_enemigo(contador, contador = 20, "me siento");
    agregar_enemigo(contador, contador = 24, "solo");
    

    for (int k = 0; k < 5; k++) texto_de_enemigo [k] = "amor";
    for (int k = 5; k < 10; k++) texto_de_enemigo [k] = "contesta";
    for (int k = 10; k < 15; k++) texto_de_enemigo [k] = "me siento";
    for (int k = 15; k < 20; k++) texto_de_enemigo [k] = "solo";
    
    if (NG.j.c.contador_de_enemigos_muertos >= contador) victoria = true;
  }

  //--------------------------------------------------------------------------------------------NIVEL_2-------------------------------------------------------------------------------------------
  //"contador" almacena y determina el inicio y fin de los grupos de enemigos
  void display_nivel_2_ansiedad_media() {//ansiedad: 20 - 70
    velocidad_de_spawn = velocidad_de_spawn_nivel_2;
    tiempo_en_juego++;
    int contador = 0; 
    agregar_enemigo(contador, contador = 3, "no");
    agregar_enemigo(contador, contador = 6, "mentira");
    agregar_enemigo(contador, contador = 9, "ella");
    agregar_enemigo(contador, contador = 12, "me");
    agregar_enemigo(contador, contador = 15, "ama");

    if (NG.j.c.contador_de_enemigos_muertos < contador-1  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;//pausa el tiempo
    else tiempo_en_juego++;

    agregar_enemigo(contador, contador = 20, "pero");
    agregar_enemigo(contador, contador = 22, "tiene");
    agregar_enemigo(contador, contador = 26, "otro");
    agregar_enemigo(contador, contador = 30, "MENTIRAS");
    agregar_enemigo(contador, contador = 32, "otro");
    agregar_enemigo(contador, contador = 36, "mejor");

    if (NG.j.c.contador_de_enemigos_muertos < contador-2  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;//pausa el tiempo
    else tiempo_en_juego++;

    agregar_enemigo(contador, contador = 37, "por");
    agregar_enemigo(contador, contador = 38, "qué?");
    agregar_enemigo(contador, contador = 39, "por");
    agregar_enemigo(contador, contador = 40, "qué?");
    agregar_enemigo(contador, contador = 41, "por");
    agregar_enemigo(contador, contador = 42, "qué?");
    agregar_enemigo(contador, contador = 43, "por");
    agregar_enemigo(contador, contador = 44, "qué?");
    agregar_enemigo(contador, contador = 45, "por");
    agregar_enemigo(contador, contador = 46, "qué?");
    agregar_enemigo(contador, contador = 47, "por");
    agregar_enemigo(contador, contador = 48, "qué?");
    agregar_enemigo(contador, contador = 49, "por");
    agregar_enemigo(contador, contador = 50, "qué?");
    agregar_enemigo(contador, contador = 51, "por");
    agregar_enemigo(contador, contador = 52, "qué?");
    agregar_enemigo(contador, contador = 53, "por");
    agregar_enemigo(contador, contador = 54, "qué?");

    if (NG.j.c.contador_de_enemigos_muertos < contador  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;//pausa el tiempo
    else tiempo_en_juego++;

    agregar_enemigo(contador, contador = 60, "la abandoné");
    if (NG.j.c.contador_de_enemigos_muertos >= contador) victoria = true;
  }

  //--------------------------------------------------------------------------------------------NIVEL_3-------------------------------------------------------------------------------------------

  //"contador" almacena y determina el inicio y fin de los grupos de enemigos

  void display_nivel_3_ansiedad_alta() {//ansiedad: 70 - 100
    velocidad_de_spawn = velocidad_de_spawn_nivel_3;
    if (tiempo_en_juego < 1) tiempo_en_juego = 10 * velocidad_de_spawn;
    tiempo_en_juego++;
    int contador = 0; 

    agregar_enemigo(contador, contador = 5, "te odio");
    agregar_enemigo(contador, contador = 10, "maldita");
    agregar_enemigo(contador, contador = 15, "TE ODIO");

    if (NG.j.c.contador_de_enemigos_muertos < contador-2  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 18, "qué");
    agregar_enemigo(contador, contador = 21, "mierda");
    agregar_enemigo(contador, contador = 24, "soy");
    agregar_enemigo(contador, contador = 27, "para");
    agregar_enemigo(contador, contador = 30, "vos?");

    if (NG.j.c.contador_de_enemigos_muertos < contador-2  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 35, "yo");
    agregar_enemigo(contador, contador = 45, "te amo");

    if (NG.j.c.contador_de_enemigos_muertos < contador-5  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 55, "te extraño");

    if (NG.j.c.contador_de_enemigos_muertos < contador-4  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 60, "respira");
    agregar_enemigo(contador, contador = 65, "calmate");

    if (NG.j.c.contador_de_enemigos_muertos < contador-5  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 90, "Daniel");

    if (NG.j.c.contador_de_enemigos_muertos < contador  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 91, "calma");
    agregar_enemigo(contador, contador = 93, "ella");
    agregar_enemigo(contador, contador = 95, "merece");
    agregar_enemigo(contador, contador = 97, "ser");

    if (NG.j.c.contador_de_enemigos_muertos < contador-4  &&  tiempo_en_juego >=  (contador-1) * velocidad_de_spawn) 
      tiempo_en_juego = (contador-1) * velocidad_de_spawn;
    else tiempo_en_juego++; 

    agregar_enemigo(contador, contador = 102, "feliz");
    agregar_enemigo(contador, contador = 104, "y yo también");
    if (NG.j.c.contador_de_enemigos_muertos >= contador) victoria = true;
  }
}//end class Enemigos
