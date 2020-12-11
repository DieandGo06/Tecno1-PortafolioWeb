class Novela {
  Interfaz i;
  Mensajes m;
  display d;
  Guion g;
  Juego j;
  Elecciones e;
  Option o;
  
  PFont font_novela;
  
  Novela() {
    i = new Interfaz();
    m = new Mensajes();
    j = new Juego();
    g = new Guion();
    d = new display();
    e = new Elecciones();
    o = new Option();
    font_novela = loadFont("LucidaSans-24.vlw");
  }//end novela

  void pantalla_de_inicio () {
    if (estado == "inicio") {
      background(i.fondo_novela);
      textFont(font_novela);
      NG.i.display_interfaz_de_novela();
      NG.o.instrucciones();
    }
  }


  void novela() {
    if (estado == "novela") {
      background(i.fondo_novela);
      o.reducir_ansiedad();
      i.propiedades_de_novela();
      m.posicion_Y_inicial();
      d.display_capitulo0();
      d.display_capitulo1();
      d.display_capitulo2();
      d.display_capitulo3();
      d.display_capitulo4();
      e.activar_elecciones_centrales();
      i.display_interfaz_de_novela();
      o.reiniciar_novela();
      //o.acelerar();
    }
  }


  void juego() {
    if (estado == "juego") {
      j.display();
    }
  }//end juego


  void estados() {
    i.boton_juego();
    j.ganar();
    j.perder();
  }
}//end estados
