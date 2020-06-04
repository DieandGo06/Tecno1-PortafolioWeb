  //Titulo
  float opacidad2, fade, moveY; 
  color opacidad1;
  PFont font, font2, font3;
  
  //Nave
  float naveA, naveL, px, py, py2, opacidad3;
  float x, y, dy= -15;   //Variables de balas
  PImage nave, disparo, disparo2;
  
  //Creditos
  float upY1, downY1, downY2, upY2, leftX1, rightX1, leftX2, rightX2; //Suma y resta (Director y Yokotaro)
  float tiempo, vel, vel2, xIn, xIn2, yIn, alto, formula, fx, fyA, fyB, correcY; //Funciones exponenciales (actores y compositor)
  float moveY2, moveY3, moveYa2, moveYa3; //Suma y resta (Productores)
  
  //BALAS DE LOS CREDITOS
  float r =random(2,4), r2 =random(3,5), r3 =random(4,5), r4 =random(8,10), distY=20, opacidad4, bFc, bFade;
  /*Director y YokoTaro*/ float x1=600, X1=x1, y1=330, x2=352, X2=x2, y2=348;
  /*Japanese Voices*/     float x3=605, X3=x3, y3=147, x4=410, X4=x4 , y4=150, x5=150, X5=x5 , y5=88;
  /*Compositor*/          float x6=963, X6=x6, y6=445, x7=537, X7=x7, y7=445;
  /*Productores*/         float x8=600, X8=x8, y8=249, y8A=510, y8B=305, y8C=170, y9=240, y10=420, y11=600 ,y12=420, y13=300 ;
  

void setup() {
  size(1200,800); //Mientras se mantenga la relacion de aspecto, los tamaños se mantienen perfecto.
  font = loadFont("Candara-Light-72.vlw"); 
  font2 = loadFont("Candara-Light-40.vlw"); 
  font3 = loadFont("CenturyGothic-32.vlw");
  nave = loadImage("nave.png");
  disparo =loadImage("disparo.png");
  disparo2 =loadImage("disparo2.png");
  /* El tamaño de la nave es de 85,140 pixeles, por lo que, cada valor es dividido entre la medida
  de la ventana para mantener la relacion y se vuelve a dividir entre 2 para ajustar el tamaño.*/
  naveA = 0.035; 
  naveL = 0.085;
  px = width*0.5;
  py = height*0.5; 
  noCursor();
}
 
 
void draw() {
  background(36,32,26);
  textAlign(CENTER);
  
  //PANTALLA DE INICIO
  //Titulo principal: Nier Automata
  fade = constrain(fade, 0,255);//transparencia limitada a 255.
  moveY = (moveY+1.5);
  opacidad1 = color (217,213,209, fade=fade+1.5);
  fill(opacidad1);
  textFont(font);
  textSize(72);
  text("NieR Automata", width/2,(height/2)+fade-moveY);
  
  //Titulo secundario: the [E]nd of YoRHa
  opacidad2 = opacidad2 + 1.9;
  fill(217,213,209, opacidad2-100);
  textFont(font2);
  textSize(40);
  text("the [E]nd of YoRHa", width/2,((height/2)+45)+fade-moveY);
  
  //Nave 
  imageMode(CENTER);
  opacidad3 = opacidad3 + 1.9;
  tint(255, opacidad3-700);
  image (nave, px,py, width*naveA,height*naveL);//nave en el centro 
  px = mouseX;//seguimiento de la nave en Y
  py = mouseY;//seguimiento de la nave en X
  
//-------------------------------------------------------------------------------------------
  //CALCULO CON SUMA Y RESTAS
  //Creditos: Director
  float speed1 = 2.5; //velocidad 
  float maxY1 = 650+(300*speed1); //Punto mas alto 
  float minY1 = maxY1+(height/2)-50; //Punto mas bajo 
  downY1 = constrain(downY1+speed1, 0, minY1); //Restriccion del descenso 
  upY1 = upY1 - speed1;//ascenso 
  leftX1 = constrain(leftX1 + (speed1/2), 0, (minY1/2));//movimiento a la izquierda (anulado)
  rightX1 = rightX1 - (speed1/2);// movimiento a la derecha
  textFont (font3);
  textSize(32);
  text("Director", width/2+(leftX1+rightX1), (-maxY1+downY1)+(downY1+upY1));
 
  //Creditos: Yoko Taro
  float speed2 = 3.0; //velocidad 
  float maxY2 = 1680+(300*speed2); //Punto mas alto 
  float minY2 = maxY2+(height/2)+100; //Punto mas bajo 
  downY2 = constrain(downY2+speed2, 0, minY2); //Restriccion del descenso 
  upY2 = upY2 - speed2;//ascenso 
  rightX2 = constrain(rightX2 + (speed2/1.3), 0, (minY2/1.4));//movimiento a la derecha (anulado)
  leftX2 = leftX2 + (speed2/1.5);// movimiento a la izquierda
  text("YokoTaro", width/2+(leftX2-rightX2), (-maxY2+downY2)+(downY2+upY2));


  //CALCULO CON FUNCIONES EXPONENCIALES
  //Creditos: Japanese Voices
  tiempo=4500; vel=0.95; xIn=400; yIn=50;
  alto = pow(tiempo,vel); formula=(pow (fx,vel) + 20); fyB = formula;/*subida en Y*/ fx=fx+vel; /*movimiento X*/;
  fyA= formula; /*bajada Y*/ fyA= constrain(fyA, 0, (height/2-yIn)+alto);
  text("Japanese Voices", (fx+xIn)-tiempo, fyA+(fyA-fyB)-alto);
  
  //2B y Yui Ishikawa
  tiempo=4800; vel=0.95; xIn=200; xIn2=600; yIn=50;
  alto = pow(tiempo,vel); formula=(pow (fx,vel) + 20); fyB = formula; fx=fx+vel; 
  fyA= formula; /*bajada Y*/ fyA= constrain(fyA, 0, (height/2-yIn)+alto);
  text("2B", (fx+xIn)-tiempo, fyA+(fyA-fyB)-alto);
  text("Yui Ishikawa", (fx+xIn2)-tiempo, fyA+(fyA-fyB)-alto);
  
  //9S y Natsuki Hanae
  tiempo=4900; vel=0.95; xIn=200; xIn2=600; yIn=50;
  alto = pow(tiempo,vel); formula=(pow (fx,vel) + 20); fyB = formula; fx=fx+vel; 
  fyA= formula;  fyA= constrain(fyA, 0, (height/2-yIn)+alto);
  text("9S", (fx+xIn)-tiempo, fyA+(fyA-fyB)-alto);
  text("Natsuki Hanae", (fx+xIn2)-tiempo, fyA+(fyA-fyB)-alto);
  
  //Creditos: Compositor y Keiichi Okabe
  tiempo=5400; vel2=0.9; xIn=1100; xIn2=-200; yIn=50; correcY = correcY +0.1;
  alto = pow(tiempo,vel2); formula=(pow (fx,vel2) + 5); fyB = formula; fx=fx+vel; 
  fyA= formula;  fyA= constrain(fyA, 0, (height/2-yIn)+alto);
  text("Keiichi Okabe", (tiempo+xIn)-fx+600, fyA+(fyA-fyB)-alto+correcY);
  text("Compositor", (fx+xIn2)-tiempo, fyA+(fyA-fyB)-alto+correcY);
  
  
  //CALCULO CON SUMA Y RESTAS
  //Creditos: Productores, Keiichi Okabe y Eijiro Nishimura
  float vel6=3, alto6 = 1850*vel6, alto7=2140*vel6;
  moveY2 += vel6;
  moveY3 += vel6;
  moveY2 = constrain(moveY2, 0,(height/2+150)+alto6);
  text("Productores", 600, moveY2+(moveY2-moveY3)-alto6);
  moveYa2 += vel6;
  moveYa3 += vel6;
  moveYa2 = constrain(moveYa2, 0,(height/2+200)+alto7);
  text("Keiichi Okabe", 250, moveYa2+(moveYa2-moveYa3)-alto7);
  text("Eijiro Nishimura", 950, moveYa2+(moveYa2-moveYa3)-alto7);
  
//-------------------------------------------------------------------------------------------
  //DISPAROS DE LA NAVE
  tint(255, opacidad3-700);
  image (disparo, x,y, width*2*naveA,height*2*naveL);
  y = y +dy;
  
//------------------------------------------------------------------------------------------- 
  //DISPAROS DE CREDITOS
  //Director
  bFc = 683;
  bFade = bFc*255;
  opacidad4 = opacidad4 + 255;
  tint(255, opacidad4-(bFade));
  image (disparo2, x1-(r*bFc),y1-(r*bFc)+distY);
  image (disparo2, -x1+(r*bFc)+(X1*2),y1-(r*bFc)+distY);
  x1 = x1 +r;
  y1 = y1 +r; 
  //YokoTaro
  bFc = 976;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade));
  image (disparo2, x2-(r*bFc),y2-(r*bFc)+distY);
  image (disparo2, -x2+(r*bFc)+(X2*2),y2-(r*bFc)+distY);
  x2 = x2 +r;
  y2 = y2 +r;
  
  //Japanese Voices
  bFc = 1239;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade));
  image (disparo2, x3-(r2*bFc),y3-(r2*bFc)+distY);
  image (disparo2, -x3+(r2*bFc)+(X3*2),y3-(r2*bFc)+distY);
  image (disparo2, X3,y3-(r2*bFc)+distY);
  x3 = x3 +r2;
  y3 = y3 +r2;
  
  //Actores de voz
  bFc = 1319;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade));
  //2B 
  image (disparo2, x4-(r2*bFc),y4-(r2*bFc)+distY);
  image (disparo2, -x4+(r2*bFc)+(X4*2),y4-(r2*bFc)+distY);
  image (disparo2, X4,y4-(r2*bFc)+distY);
  //Yui Ishikawa 
  image (disparo2, x4-(r2*bFc)+400,y4-(r2*bFc)+distY);
  image (disparo2, -x4+(r2*bFc)+(X4*2)+400,y4-(r2*bFc)+distY);
  image (disparo2, X4+400,y4-(r2*bFc)+distY);
  x4 = x4 +r2;
  y4 = y4 +r2;
  //9S 
  image (disparo2, x5-(r2*bFc),y5-(r2*bFc)+distY);
  image (disparo2, -x5+(r2*bFc)+(X5*2),y5-(r2*bFc)+distY);
  image (disparo2, X5,y5-(r2*bFc)+distY);
  //Natsuki Hanae 
  image (disparo2, x5-(r2*bFc)+400,y5-(r2*bFc)+distY);
  image (disparo2, -x5+(r2*bFc)+(X5*2)+400,y5-(r2*bFc)+distY);
  image (disparo2, X5+400,y5-(r2*bFc)+distY);
  x5 = x5 +r2;
  y5 = y5 +r2;

  //Compositor
  bFc = 1615;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x6-(r2*bFc),y6-(r2*bFc)+distY);
  image (disparo2, -x6+(r2*bFc)+(X6*2),y6-(r2*bFc)+distY);
  image (disparo2, X6,y6-(r2*bFc)+distY);
  x6 = x6 +r2;
  y6 = y6 +r2;
  //Keiichi Okabe
  image (disparo2, x7-(r2*bFc),y7-(r2*bFc)+distY);
  image (disparo2, -x7+(r2*bFc)+(X7*2),y7-(r2*bFc)+distY);
  image (disparo2, X7,y7-(r2*bFc)+distY);
  x7 = x7 +r2;
  y7 = y7 +r2;
  
  //PRODUCTORES
  bFc = 1933;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc),y8-(r3*bFc)+distY);
  image (disparo2, -x8+(r3*bFc)+(X8*2),y8-(r3*bFc)+distY);
  image (disparo2, X8,y8-(r3*bFc)+distY);
  y8 = y8 +r3;
  bFc = 2021;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc),y8A-(r3*bFc)+distY);
  image (disparo2, -x8+(r3*bFc)+(X8*2),y8A-(r3*bFc)+distY);
  image (disparo2, X8,y8A-(r3*bFc)+distY);
  y8A = y8A +r3;
  bFc = 2115;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc),y8B-(r3*bFc)+distY);
  image (disparo2, -x8+(r3*bFc)+(X8*2),y8B-(r3*bFc)+distY);
  image (disparo2, X8,y8B-(r3*bFc)+distY);
  y8B = y8B +r3;
  
  //Ultimo disaparo de Productores
  bFc = 2160;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc),y8C-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2),y8C-(r3*bFc));
  image (disparo2, X8,y8C-(r3*bFc));
  //Primer Keiichi Okabe  
  image (disparo2, x8-(r3*bFc)-350,y8C-(r3*bFc)-110);
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y8C-(r3*bFc)-110);
  image (disparo2, X8-350,y8C-(r3*bFc)-110);
  //Primer Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y8C-(r3*bFc)-110);
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y8C-(r3*bFc)-110);
  image (disparo2, X8+350,y8C-(r3*bFc)-110);
  y8C = y8C +r3;
  //Segundo Keiichi Okabe 
  bFc = 2220;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc)-350,y9-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y9-(r3*bFc));
  image (disparo2, X8-350,y9-(r3*bFc));
  //Segundo Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y9-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y9-(r3*bFc));
  image (disparo2, X8+350,y9-(r3*bFc));
  y9 = y9 +r3;
  //Tercero Keiichi Okabe 
  bFc = 2280;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc)-350,y10-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y10-(r3*bFc));
  image (disparo2, X8-350,y10-(r3*bFc));
  //Tercero Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y10-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y10-(r3*bFc));
  image (disparo2, X8+350,y10-(r3*bFc));
  y10 = y10 +r3;
  //Cuarto Keiichi Okabe 
  bFc = 2340;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc)-350,y11-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y11-(r3*bFc));
  image (disparo2, X8-350,y11-(r3*bFc));
  //Cuarto Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y11-(r3*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y11-(r3*bFc));
  image (disparo2, X8+350,y11-(r3*bFc));
  y11 = y11 +r3;
  //Quinto Keiichi Okabe 
  bFc = 2400;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc)-350,y12-(r4*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y12-(r4*bFc));
  image (disparo2, X8-350,y12-(r4*bFc));
  //Cuarto Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y12-(r4*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y12-(r4*bFc));
  image (disparo2, X8+350,y12-(r4*bFc));
  y12 = y12 +r4;
  //Sexto Keiichi Okabe 
  bFc = 2440;
  bFade = bFc*255;
  tint(255, opacidad4-(bFade)); 
  image (disparo2, x8-(r3*bFc)-350,y13-(r4*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)-350,y13-(r4*bFc));
  image (disparo2, X8-350,y13-(r4*bFc));
  //Cuarto Eijiro Nishimura
  image (disparo2, x8-(r3*bFc)+350,y13-(r4*bFc));
  image (disparo2, -x8+(r3*bFc)+(X8*2)+350,y13-(r4*bFc));
  image (disparo2, X8+350,y13-(r4*bFc));
  x8 = x8 +r3;
  y13 = y13 +r4;
  
}

void mousePressed() {
  //DISPAROS DE LA NAVE
  x= mouseX;
  y= mouseY;
  image (disparo, x ,y, width*2*naveA,height*2*naveL);
}
