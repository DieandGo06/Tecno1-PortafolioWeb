Nave n;
Enemigos e;
Proyectil p;
Bala b;
Juego j;
Colisiones c;
Opciones o;
Novela novela;

void setup() {
  noStroke();
  size (600, 800); 
  n = new Nave();
  e = new Enemigos();
  b = new Bala();
  p = new Proyectil();
  j = new Juego();
  c = new Colisiones();
  o = new Opciones();
  novela = new Novela();
  surface.setResizable(true);
  surface.setLocation(100, 100);
  //noCursor();
}

void draw() {
  j.novela();
  j.nave();
  j.enemigos();
  j.colision();
  j.perder();
}//end void draw
