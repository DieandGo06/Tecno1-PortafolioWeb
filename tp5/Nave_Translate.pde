/*

 class Nave {
 float x = width/2;
 float y = height/2;
 float naveX = 0;
 float naveY = 0;
 float correccionX;
 float correccionY;
 
 void display() {
 PImage nave;
 imageMode(CENTER);
 nave = loadImage("nave jugable.png");
 
 pushMatrix();
 translate(x, y);
 float direccionX = mouseX + correccionX;
 float direccionY = mouseY + correccionY;
 float rotacion = atan2(direccionY-height/2, direccionX-width/2); 
 rotate(rotacion);
 image(nave, naveX, naveY); //Nave
 popMatrix();
 
 fill(255, 0, 0);
 rectMode(CENTER);
 rect(x, y, 10, 10);
 
 //1. Se reubica el punto (0,0) a (x,y)
 //2. "atan2" calcula angulo del mouse con respecto a (x,y)
 //  "mouseX" y "mouseY" se remplazaron por "direccionX" y "direccionY" 
 //  las cuales corrigen un error producido al mover la nave.
 //3. La nave se ubica en (0,0) respecto (x,y)
 //Note: "atan2" invertio (x,y) a (-x,-y)
 //Note: Mover (x,y) mueve la nave
 }
 
 
 void moveArrows() {//Movimiento con flechas
 float speed= 4;
 if (keyPressed == true) {
 if (key == CODED) {
 if (keyCode == UP) {
 y-=speed; 
 correccionY+=speed;
 } else if (keyCode == DOWN) {
 y+=speed;
 correccionY-=speed;
 } else if (keyCode == LEFT) {
 x-=speed;
 correccionX+=speed;
 } else if (keyCode == RIGHT) {
 x+=speed;
 correccionX-=speed;
 }
 }
 }
 //Se mueve el eje (x,y), y con ello, la nave tambien
 //La "correcion: ha de ser opuesta al movimiento
 //para lograr que que se siga al mouse
 }
 
 void moveTeclado() {//Movimiento con teclas: W A S D
 float speed= 4;
 if (keyPressed == true) {
 if (key == 'w') {
 y-=speed;
 correccionY+=speed;
 } else if (key == 's') {
 y+=speed;
 correccionY-=speed;
 } else if (key == 'a') {
 x-=speed;
 correccionX+=speed;
 } else if (key == 'd') {
 x+=speed;
 correccionX-=speed;
 }
 }
 }//end moveTeclado
 
 void disparar() {
 pushMatrix();
 translate(x, y);
 if (key == 'q') {
 b.display(0,0);
 } 
 popMatrix();    
 }// end disparar
 
 }// end Class Nave
 

 ---------------------------------------------------------------
 //MULTI KEYS
 void move() {
 if (keyPressed) {
 if (left==true) naveX--;
 if (right==true) naveX++;
 if (up==true) naveY--;
 if (down==true) naveY++;
 }
 }
 
 public void keyPressed() {
 if (key== 'a') left = true;
 if (key== 'd') right = true;
 if (key== 'w') up = true;
 if (key== 's') down = true;
 }
 
 public void keyReleased() {
 if (key== 'a') left = false;
 if (key== 'd') right = false;
 if (key== 'w') up = false;
 if (key== 's') down = false;
 }



 -----------------------------------------------------------------
 DISPARO AVANZADO
 float x;
 float y;
 float speed, rotacion, maxSpeed;
 boolean disparar;
 
 void bala() {
 fill (0, 255, 0);
 rect (x, y, 20, 20);
 speed = 0;
 rotacion = 0;
 maxSpeed = 8;
 disparar = false;
 }
 
 void posicionInicial(float startX, float startY, float startRotacion) {
 x = startX;
 y = startY;
 rotacion = startRotacion;
 disparar = true;
 }
 
 void update() {
 if (disparar==true) {
 if (speed < maxSpeed) {
 speed += 4;
 }
 //movimiento 
 x += cos(rotacion) * speed;
 y += sin(rotacion) * speed;
 
 //reinicio de bala
 if (x > width || x<0 || y > height || y < 0) {
 speed = 0;
 disparar = false;
 }
 }
 
 }// end update
 */
