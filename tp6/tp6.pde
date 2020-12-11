import ddf.minim.*;
Minim minim;
AudioPlayer musica_de_juego;

Novela NG;
String estado;

void setup() {
  size (600, 800);
  noStroke();
  NG = new Novela(); 
  surface.setResizable(true);
  surface.setLocation(1200, 125);

  estado = "novela";

  minim = new Minim(this);
  musica_de_juego = minim.loadFile("Danger.mp3");
}//end setup

void draw() {
  NG.pantalla_de_inicio();
  NG.novela();
  NG.juego();
  NG.estados();

  if (estado=="juego") musica_de_juego.play();
  if (estado=="novela") {
    musica_de_juego.rewind();
    musica_de_juego.pause();
  }
}//end void
