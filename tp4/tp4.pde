boolean interfaz0, interfaz1, interfaz2, interfaz3, c;

int rLn1, rLn2, rLn3, i, I;
int posX1, posX2, posY, anchX;
int posXt1, posXt2, posYt, anchXt, altoYt;
int margen, suma, b, B, e;
int botonY1, distY, seleccion;
int up, opcionY1, opcionY2;
int fade, fade2, fade3;
int seleccion0, seleccion2, seleccion3, seleccion4;
float time, time0, time2, time3, time4, time5;

//Funciones
String [] nombreFinal= new String[2];
float fadeFinal, moveCreditos;

PFont font;
PImage Perfil;

color blanco= #FFFFFF;
color negro= #000000;
color azul= #517BBE;

void setup(){
  size (800,600);  
  noStroke();
  textSize(25);
  font = loadFont("Bahnschrift-25.vlw");
  Perfil = loadImage("Perfil.png");
  
  rLn1= 45; rLn2= 75; rLn3= 105; 
  i= 5; I= 10; altoYt= 200;
  posX1= 20; posX2= 330;
  posXt1= 30; posXt2= 345; 
  anchX= 450;
  anchXt= 420; 
  margen=20; 
  b=15; B=25; 
  opcionY1= 470; 
  opcionY2= 415;
  botonY1=470;
  distY= 55;
  e= 30; 
}

void draw(){
  background(#ECEFF1);
  textFont(font);
  
  //Temporizador
  suma++; 
  if (suma>60){
    time++; suma=0;
    time0++; suma=0;
    time2++; suma=0;
    time3++; suma=0;
    time4++; suma=0;
  }
println(fadeFinal);

  //Datos iniciales
  posY= 470-up; posYt= posY+13;
  //----------------------------------------------------------------------------------------
  //PANTALLA DE INICIO
  //----------------------------------------------------------------------------------------
  String m1E= "Te quiero"; 
  String m2E= "hola, cómo estás? cómo dormiste?"; float Tm2E= textWidth(m2E);
  String m3E= "Wow, te despertaste temprano";
  String m4E= "Yo, bien, y tu?";
  String m5E= "estoy bien pero apenas pude dormir"; float Tm5E= textWidth(m5E);
  String m6E= "Pesadillas?";
  String m7E= "nonono, para nada"; float Tm7E = textWidth(m7E);
  String m8E= "para nada"; float Tm8E= textWidth(m8E);
  fill(blanco); rect (posX2,posY, anchX+10,rLn1,b,b,b,b); 
    textAlign(RIGHT); fill(negro); text(m1E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up=rLn1+I;   fill(azul); rect (posX1,posY, Tm2E+e,rLn1,b,b,b,b); 
textAlign(LEFT); fill(blanco); text(m2E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(negro); text(m3E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(negro); text(m4E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(azul); rect (posX1,posY, Tm5E+e,rLn1,b,b,b,b); 
textAlign(LEFT); fill(blanco); text(m5E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(negro); text(m6E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(azul); rect (posX1,posY, Tm7E+e,rLn1,b,b,b,b); 
textAlign(LEFT); fill(blanco); text(m7E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(azul); rect (posX1,posY, Tm8E+e,rLn1,b,b,b,b); 
textAlign(LEFT); fill(blanco); text(m8E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
  posY+= rLn1+I; 
  
  
  //----------------------------------------------------------------------------------------
  //ELECCION 1
  //----------------------------------------------------------------------------------------  
    String m0E1= "es solo que"; float Tm0E1= textWidth(m0E1);
    String m1E1= "amor"; float Tm1E1= textWidth(m1E1);
    String m2E1= "x mensaje eliminado"; float Tm2E1= textWidth(m2E1);
    String m3E1= "que paso? jajaja tu nunca borras los mensajes";
    String m4E1= "tengo contarte algo";float Tm4E1= textWidth(m4E1);
    String m5E1= "dime";
    String m6E1= "algo malo"; float Tm6E1= textWidth(m6E1);
    String m6BE1= "sobre nosotros?";
    String m6CE1= "si..."; float Tm6CE1= textWidth(m6CE1);
    String m7E1= "Puedo pasear a Rock? o prefieres hablar antes?";
    String m8E1= "si, tranquilo, saca a rocky, sino te va morder"; 
    String m9E1= "voy a comer mientras";float Tm9E1= textWidth(m9E1);
    String m10E1= "Hi";
    String m11E1= "hi"; float Tm11E1= textWidth(m11E1);
  //Mensaje 0 
  if(time0>=8 && seleccion0==0){
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm0E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m0E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time0>=10 && seleccion0==0){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm1E1+e,rLn1,b,b,b,b);
    textAlign(LEFT); fill(blanco); text (m1E1, posXt1,posYt, anchXt, altoYt); }
  //Mensaje 2  
  if(time0>=12 && seleccion0==0){//Mensaje eliminado
    fill(azul); rect (posX1,posY, Tm2E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m2E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 3
  if(time0>=15 && seleccion0==0){
    up+=rLn2+I;
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(negro); text (m3E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
  //Mensaje 4
  if(time0>=18 && seleccion0==0){
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm4E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m4E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 5
  if(time0>=21 && seleccion0==0){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m5E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 6
  if(time0>=24 && seleccion0==0){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm6E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m6E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
//Mensaje 6B
  if(time0>=27 && seleccion0==0){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m6BE1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 6C
  if(time0>=30 && seleccion0==0){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm6CE1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m6CE1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 7
  if(time0>=34 && seleccion0==0){
    up+=rLn2+I; 
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(negro); text(m7E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 8
  if(time0>=38 && seleccion0==0){ 
    up+=rLn2+I;
    fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(blanco); text(m8E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
  //Mensaje 9
  if(time0>=41 && seleccion0==0){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm9E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m9E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 10
  if(time0>=54 && seleccion0==0){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m10E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 11
  if(time0>=60 && seleccion0==0){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm11E1+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m11E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  
  //Encendedor de Interfaz
  if(time0>=63 && seleccion0==0 && time0<=150){
    interfaz0=true;
  }
  
  //----------------------------------------------------------------------------------------
  //ELECCION 1 (seleccion=1000)
  //----------------------------------------------------------------------------------------  
    String m0s1000E2= "Es uno de los del frances?";
    String m1s1000E2= "ya lo sabías?";
    String m2s1000E2= "No, pero me lo imaginaba";
    String m3s1000E2= "cómo?";
    String m4s1000E2= "Lucy, te conozco";
    String m5s1000E2= "Nunca te habia visto tan entusiasmada, menos con un grupo que conoces haces 2 semanas";
    String m6s1000E2= "Cuando me pasaste la foto, ya empece a hacerme la idea, aunque no quería creerlo";
    String m7s1000E2= "Ademas, maria dejo de repetirme que seguiamos siendo novios";
    String m8s1000E2= "estas bien?";
  //Mensaje 0
  if(time>=0 && seleccion==1000){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m0s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time>=4 && seleccion==1000){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  //Mensaje 2
  if(time>=7 && seleccion==1000){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m2s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 3
  if(time>=9 && seleccion==1000){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m3s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 4
  if(time>=12 && seleccion==1000){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m4s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 5
  if(time>=20 && seleccion==1000){
    up+=rLn3+I;
    fill(blanco); rect (posX2,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
    textAlign(LEFT); fill(negro); text (m5s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn3+I; }        
  //Mensaje 6
  if(time>=28 && seleccion==1000){
    up+=rLn3+I;
    fill(blanco); rect (posX2,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
    textAlign(LEFT); fill(negro); text (m6s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn3+I; }           
  //Mensaje 7
  if(time>=32 && seleccion==1000){
    up+=rLn2+I;
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(negro); text (m7s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }     
  //Mensaje 8
  if(time>=35 && seleccion==1000){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m8s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    
  //Encendedor de Interfaz
  if(time>=38 && seleccion==1000 && time<=150){
    interfaz1=true;
  }    

    
  //----------------------------------------------------------------------------------------
  //ELECCION 2 (seleccion=2000)
  //----------------------------------------------------------------------------------------      
    String m0s2000E2= "Si... es solo que... no se... no me lo esperaba";
    String m1s2000E2= "no podía seguir sin decirte";
    String m2s2000E2= "sentía que  te estaba siendo infiel aunque no tuviese sentido";  
  //Mensaje 0
  if(time2>=0 && seleccion2==2000){
    up+=rLn2+I;
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(RIGHT); fill(negro); text (m0s2000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 1
  if(time2>=4 && seleccion2==2000){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s2000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 2
  if(time2>=10 && seleccion2==2000){ 
    up+=rLn2+I;
    fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(blanco); text (m2s2000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    
  //Encendedor de Interfaz
  if(time2>=14 && seleccion2==2000 && time2<=150){
    interfaz2=true;    
  }
  
  
  //----------------------------------------------------------------------------------------
  //Final C  (seleccion=2020)
  //----------------------------------------------------------------------------------------      
    String m0s2020= "Para, no quiero saber mas";
    String m1s2020= "No quiero otro ataque de panico";
    String m2s2020= "disculpa"; float Tm2s2020= textWidth(m2s2020);
    
  //Mensaje 0
  if(time3>=0 && seleccion3==2020){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m0s2020, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  //Mensaje 1
  if(time3>=4 && seleccion3==2020){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m1s2020, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  //Mensaje 2
  if(time3>=8 && seleccion3==2020){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, Tm2s2020+e,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m2s2020, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  
  
  //----------------------------------------------------------------------------------------
  //Final P  (seleccion=2001)
  //----------------------------------------------------------------------------------------        
    String m0s2001= "Lucy, tranquila, lo entiendo";  
    String m1s2001= "Ha pasado casi un año desde que me fui. Sabiamos que iba a pasar";
    String m2s2001= "No estoy en mi mejor momento, pero me alegra que puedas seguir adelante";
    String m3s2001= "si, sabiamos que iba a pasar";
    String m4s2001= "maldito maduro";
    String m5s2001= "Maldito Maduro";
    String m7s2001= "Te voy a extrañar mucho, lo sabes?";
    String m8s2001= "yo llevo 9 meses haciendolo";
    String m9s2001= "galla";
    String m10s2001= "Puedo decirlo por última vez?";
    String m11s2001= "claro gallo";
    String m12s2001= "Te amo";
    String m13s2001= "te amo";
    
  //Mensaje 0
  if(time3>=0 && seleccion3==2001){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m0s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 1
  if(time3>=6 && seleccion3==2001){
    up+=rLn2+I;
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(RIGHT); fill(negro); text (m1s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 2
  if(time3>=12 && seleccion3==2001){
    up+=rLn2+I;
    fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(RIGHT); fill(negro); text (m2s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 3
  if(time3>=15 && seleccion3==2001){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m3s2001, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 4
  if(time3>=19 && seleccion3==2001){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m4s2001, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 5
  if(time3>=21 && seleccion3==2001){ 
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m5s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 7
  if(time3>=25 && seleccion3==2001){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m7s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  //Mensaje 8
  if(time3>=28 && seleccion3==2001){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m8s2001, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 9
  if(time3>=31 && seleccion3==2001){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m9s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }   
  //Mensaje 10
  if(time3>=35 && seleccion3==2001){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m10s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }   
  //Mensaje 11
  if(time3>=38 && seleccion3==2001){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m11s2001, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 12
  if(time3>=42 && seleccion3==2001){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m12s2001, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 13
  if(time3>=48 && seleccion3==2001){
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m13s2001, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 

  
  //----------------------------------------------------------------------------------------
  //ELECCION 1 (seleccion=5)
  //----------------------------------------------------------------------------------------      
    String m0s0005E2= "Amor, que me querias decir?";
    String m1s0005E2= "estoy saliendo con alguien";
    String m2s0005E2= "...lo conozco?";
    String m3s0005E2= "no, es del francés";  
    String m4s0005E2= "Ale, estas bien?";
  //Mensaje 0
  if(time>=0 && seleccion==5){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m0s0005E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time>=6 && seleccion==5){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 2
  if(time>=14 && seleccion==5){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m2s0005E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  if(time>=17 && seleccion==5){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m3s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  if(time>=27 && seleccion==5){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m4s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    
  //Encendedor de Interfaz
  if(time>=33 && seleccion==5 && time<=150){
    interfaz1=true;    
  }
  
  //----------------------------------------------------------------------------------------
  //ELECCION 2 (seleccion=1005)
  //----------------------------------------------------------------------------------------      
    String m0s1005= "Como se llama?";  
    String m1s1005= "daniel";
    
    //Mensaje 0
    if(time2>=0 && seleccion2==1005){
    up+=rLn1+I;
    fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(negro); text (m0s1005, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 1
    if(time2>=6 && seleccion2==1005){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s1005, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  
    //Encendedor de Interfaz
    if(time2>=12 && seleccion2==1005 && time2<=150){
    interfaz2=true;    
    }
    
  //----------------------------------------------------------------------------------------
  //ELECCION 3 (seleccion=1025)
  //----------------------------------------------------------------------------------------      
    String m1s1025= "disculpa";  
    String m2s1025= "no podía seguir sin decirte";    
    String m3s1025= "sentía que te estaba siendo infiel aunque no tuviese sentido";   
    String m4s1025= "y sigo sintiendome  así, pero en serio, tenía que decirtelo"; 
    
    //Mensaje 1
    if(time3>=8 && seleccion3==1025){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s1025, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 2
    if(time3>=16 && seleccion3==1025){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m2s1025, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 3
    if(time3>=22 && seleccion3==1025){ 
    up+=rLn2+I;
    fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(blanco); text (m3s1025, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 4
    if(time3>=28 && seleccion3==1025){ 
    up+=rLn2+I;
    fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(blanco); text (m4s1025, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }          
    
    //Encendedor de Interfaz
    if(time3>=32 && seleccion3==1025 && time3<=150){
    interfaz3=true;    
    }    
    
  //----------------------------------------------------------------------------------------
  //Final S  (seleccion=1046)
  //----------------------------------------------------------------------------------------            
    String m1s1046= "disculpa";    
    String m2s1046= "de verdad";
    String m3s1046= "no te imagianas cuanto te extraño pero  ha pasado casi un año desde que te fuiste ";
    String m4s1046= "debemos seguir adelante";  
    String m5s1046= "solo no me odies";  
    String m6s1046= "o a rocky.";  
    String m7s1046= "PROHIBIDO ODIAR A ROCKY, JUUUUU";
    String m8s1046= "en serio me gustaría junto a ti";
    String m9s1046= "pero no podemos estancarnos aunque no queramos";
    
    //Mensaje 1
    if(time4>=6 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m1s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }      
    //Mensaje 2
    if(time4>=8 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m2s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 3
    if(time4>=14 && seleccion4==1046){ 
    up+=rLn3+I;
    fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
    textAlign(LEFT); fill(blanco); text (m3s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }      
    //Mensaje 4
    if(time4>=18 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m4s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    //Mensaje 5
    if(time4>=22 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m5s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }      
    //Mensaje 6
    if(time4>=24 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m6s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    //Mensaje 7
    if(time4>=27 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m7s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 8
    if(time4>=36 && seleccion4==1046){ 
    up+=rLn1+I;
    fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(blanco); text (m8s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 9
    if(time4>=40 && seleccion4==1046){ 
    up+=rLn2+I;
    fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(blanco); text (m9s1046, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }      
    
  //----------------------------------------------------------------------------------------
  //Final F  (seleccion=1028)
  //----------------------------------------------------------------------------------------            
    String m0s1028= "Linda, no pasa nada, tranquila";
      String m1s1028= "disculpa";    
    String m2s1028= "No tienes porque disculpate";
    String m3s1028= "Ha pasado casi un año desde que me fui";
    String m4s1028= "Tarde o temprano pasaria, a ti, o, a mi";
      String m5s1028= "si, lo sabiamos desde el primer día";
    String m6s1028= "4 años";
      String m6As1028= "4 años";
    String m7s1028= "Al menos siempre nos quedara Nueva Zelanda";
      String m8s1028= "Ale, no creo que sea sano seguir pensando en ello";
      String m9s1028= "como avanzar pensando en un futuro juntos?";
      String m11s1028= "disculpa pero no puedo estar con alguien pensando que algún día volveremos a estar juntos"; 
      String m12s1028= "hey, cómo estas?";
    String m13s1028= "Creo que necesito un tiempo para pensar y procesar todo";
      String m14s1028= "oki"; 
    String m15s1028= "Te amo";
    String m16s1028= "x mensaje eliminado";
      String m17s1028= "yo también te amo lindo";
  
    //Mensaje 0
    if(time4>=0 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 1
    if(time4>=3 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
    //Mensaje 2
      if(time4>=7 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m2s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 3
      if(time4>=11 && seleccion4==1028){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m3s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 4
      if(time4>=15 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m4s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 5
    if(time4>=19 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m5s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 6
    if(time4>=23 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m6s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 6A
    if(time4>=27 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m6As1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 7
    if(time4>=30 && seleccion4==1028){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m7s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 8
    if(time4>=38 && seleccion4==1028){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m8s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 9
    if(time4>=42 && seleccion4==1028){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m9s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 11
    if(time4>=48 && seleccion4==1028){ 
      up+=rLn3+I;
      fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
      textAlign(LEFT); fill(blanco); text (m11s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }
    //Mensaje 12
    if(time4>=58 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m12s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }   
    //Mensaje 13
    if(time4>=66 && seleccion4==1028){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m13s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 14
    if(time4>=68 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m14s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 15
    if(time4>=75 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); 
      textAlign(RIGHT); fill(negro); text (m15s1028, posXt2,posYt, anchXt, altoYt); } 
    //Mensaje 16
    if(time4>=76 && seleccion4==1028){ 
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m16s1028, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 17
    if(time4>= 84 && seleccion4==1028){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m17s1028, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
      

      

  //----------------------------------------------------------------------------------------
  //ELECCION 2 (seleccion=10)
  //----------------------------------------------------------------------------------------      
    String m0s10= "No";  
      String m1s10= "disculpa";  
      String m2s10= "no podía seguir sin decirte";
     
    //Mensaje 0
    if(time2>=0 && seleccion2==10){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s10, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 1
    if(time2>=3 && seleccion2==10){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s10, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 2
    if(time2>=8 && seleccion2==10){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m2s10, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    
    //Encendedor de Interfaz
    if(time2>=14 && seleccion2==10 && time2<=150){
      interfaz2=true;         
    }
      
  //----------------------------------------------------------------------------------------
  //FINAL M (seleccion=30)
  //----------------------------------------------------------------------------------------        
      String m1s30= "ale?";  
      String m2s30= "hey";    
      String m3s30= "cómo estas?";
      String m4s30= "disculpa"; 
    //Mensaje 1
    if(time3>=6 && seleccion3==30){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s30, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 2
    if(time3>=12 && seleccion3==30){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m2s30, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 3
    if(time3>=18 && seleccion3==30){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m3s30, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 4
    if(time3>=24 && seleccion3==30){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m4s30, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
      
  //----------------------------------------------------------------------------------------
  //FINAL M2 (seleccion=11)
  //----------------------------------------------------------------------------------------        
    String m0s11= "No sigas.";
      String m1s11= "disculpa";  
      String m2s11= "solo no me odies";    
    String m3s11= "no creo que pueda odiarte pero debo procesar todo... solo";
      String m4s11= "disculpa"; 
    //Mensaje 0
    if(time3>=0 && seleccion3==11){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s11, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 1
    if(time3>=4 && seleccion3==11){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s11, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 2
    if(time3>=8 && seleccion3==11){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m2s11, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 3
    if(time3>=14 && seleccion3==11){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m3s11, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 4
    if(time3>=18 && seleccion3==11){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m4s11, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
      
      
  //----------------------------------------------------------------------------------------
  //ELECCION 3 (seleccion=1006)
  //----------------------------------------------------------------------------------------      
    String m0s1006= "Cuantas veces?";  
      String m1s1006= "tres";    
    String m2s1006= "en que momento si lo conoces desde hace como 2 semanas?";   
      String m3s1006= "sabes cuándo te dijé que iba a salir con los del francés?";
      String m4s1006= "era con él";
    String m5s1006= "No entiendo. Por qué me mentiste?";
    String m6s1006= "Prefiero que no me digas antes que me mientas";
      String m7s1006= "me sentía culpable ";
      String m8s1006= "como si te fuese infiel";
    String m9s1006= "Es el alto de la foto? Aquel junto a ti? ";
        String m10s1006= "si";
    String m11s1006= "Es el profesor, verdad?";
      String m12s1006= "si... maría te contó?";
    String m13s1006= "Lucy, te conozco";
      String m14s1006= "tiene 26, solo nos lleva 5 años, no es gran cosa";
    String m15s1006= "No me sigas mintiendo";
    String m16s1006= "Si crees que no es gran cosa, por que lo mencionaste?";
      String m17s1006= "no se";
    String m18s1006= "No entiendo";
    String m19s1006= "Por que mentiste?";
    String m20s1006= "Para que?";
    String m21s1006= "Que paso con eso de nunca mentirnos?";
    String m22s1006= "No me lo puedo creer";
    String m23s1006= "Por que?";
      
    
    //Mensaje 0
    if(time3>=0 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 1
    if(time3>=3 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }      
    //Mensaje 2
    if(time3>=6 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m2s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }   
    //Mensaje 3
    if(time3>=11 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m3s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 4
    if(time3>=14 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m4s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 5
    if(time3>=18 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m5s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
    //Mensaje 6
    if(time3>=22 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m6s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }    
    //Mensaje 7
    if(time3>=26 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m7s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 8
    if(time3>=29 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m8s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 9
    if(time3>=36 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m9s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 10
    if(time3>=39 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m10s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 11
    if(time3>=45 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m11s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 12
    if(time3>=48 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m12s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 13
    if(time3>=51 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m13s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 14
    if(time3>=54 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m14s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }      
    //Mensaje 15
    if(time3>=57 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m15s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
   //Mensaje 16
    if(time3>=61 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m16s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }   
    //Mensaje 17
    if(time3>=64 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m17s1006, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 18
    if(time3>=70 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m18s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
   //Mensaje 19
    if(time3>=71 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m19s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 20
    if(time3>=72 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m20s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 21
    if(time3>=73 && seleccion3==1006){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m21s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 22
    if(time3>=74 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m22s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 23
    if(time3>=75 && seleccion3==1006){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m23s1006, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    
      
    //Encendedor de Interfaz
    if(time3>=76 && seleccion3==1006 && time3<=150){
      interfaz3=true;             
    }
      
     
      
  //----------------------------------------------------------------------------------------
  //Final F (seleccion=1027)
  //----------------------------------------------------------------------------------------      
    String m0s1027= "Y ahora que? le quieres? te gusta?";        
      String m1s1027= "apenas lo conozco";   
      String m2s1027= "solo me atrae";   
    String m3s1027= "3 veces en menos de una semana???"; 
    String m4s1027= "Aparentemente te valio para remplazarme";  
      String m5s1027= "ale, han pasado 9 meses desde que te fuiste. Crees que no extraño?"; 
      String m6s1027= "lloré todos los días por más de un mes"; 
      String m7s1027= "crees que eres el único que la ha pasado mal??";
    String m8s1027= "Por que no me dijiste?";
    String m9s1027= "Has sido tu la evasiva estos ultimos tres meses";
      String m10s1027= "porque no quería seguir siendo emocionalmente dependiente de ti";
      String m11s1027= "y si, te quiero como no he querido a nadie más, y no, no te he olvidado ni un solo día";
      String m12s1027= "pero tras tanto, que por fin logro interesarme por alguien, me tratas así";
    String m13s1027= "Amor espera"; 
      String m14s1027= "no"; 
      String m15s1027= "bye";
    String m16s1027= "Amor, disculpa, no es lo quería decir"; 
      String m17s1027= "no quiero seguir hablando"; 
      String m18s1027= "bye";
    String m19s1027= "Disculpa";
    String m20s1027= "Yo también pienso en ti todos los días";
    String m21s1027= "Te quiero mucho, lo sabes?";
    String m22s1027= "Perdon, estaba en medio de un ataque de panico?";
    String m23s1027= "Amor?";
    
    //Mensaje 0
    if(time4>=0 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    //Mensaje 1
    if(time4>=3 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 2
    if(time4>=6 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m2s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 3
    if(time4>=9 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m3s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 4
    if(time4>=12 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m4s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
    //Mensaje 5
    if(time4>=20 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m5s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 6
    if(time4>=24 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m6s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 7
    if(time4>=31 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m7s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 8
    if(time4>=34 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m8s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 9
    if(time4>=37 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m9s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 10
    if(time4>=40 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m10s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 11
    if(time4>=46 && seleccion4==1027){ 
      up+=rLn3+I;
      fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
      textAlign(LEFT); fill(blanco); text (m11s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }  
    //Mensaje 12
    if(time4>=50 && seleccion4==1027){ 
      up+=rLn3+I;
      fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
      textAlign(LEFT); fill(blanco); text (m12s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }  
    //Mensaje 13
    if(time4>=51 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m13s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 14
    if(time4>=53 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m14s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 15
    if(time4>=55 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m15s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 16
    if(time4>=58 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m16s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 17
    if(time4>=60 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m17s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 18
    if(time4>=61 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m18s1027, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 19
    if(time4>=65 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m19s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
    //Mensaje 20
    if(time4>=70 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m20s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
    //Mensaje 21
    if(time4>=75 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m21s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 22
    if(time4>=80 && seleccion4==1027){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m22s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 23
    if(time4>=82 && seleccion4==1027){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m23s1027, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
      


  //----------------------------------------------------------------------------------------
  //Final I (seleccion=1009)
  //----------------------------------------------------------------------------------------         
    String m0s1009= "Creo que estoy al borde de un ataque?";  
      String m1s1009= "pánico o ansiedad?";  
      String m2s1009= "cómo estas lindo?";  
    String m3s1009= "Panico";
    String m4s1009= "Llorando";  
      String m5s1009= "quieres seguir hablando de esto o prefieres distraerte?";
    String m6s1009= "Quiero seguir hablando de esto pero no creo que sea sano";   
      String m7s1009= "oki"; 
      String m8s1009= "hablemos de rocky cómo está ese grodito?"; 
    String m9s1009= "Gordo";
    String m10s1009= "Y pituca?";
      String m11s1009= "bien, a mi lado aunque molesta";
      String m12s1009= "no le gusta que le llames así";
    String m13s1009= "Cierto que prefiere que le llame gorda";
      String m14s1009= "no seas tan malo con ella, ella te quiere";
      String m15s1009= "ves? le estoy mostrando una foto de tu cara y creo que quiere sentarse sobre ti";
      String m16s1009= "no te ha olvidado";
      String m18s1009= "awwww, ahora te esta lamiendo";
      String m19s1009= "que linda";
    String m20s1009= "Amor, disculpa, creo que necesito tiempo para procesar todo, si?";
      String m21s1009= "claro lindo";
      String m22s1009= "hablamos cuando te sientas mejor";
    String m23s1009= "Gracias por decirme y querer animarme despues de tanto";
      String m24s1009= "recuerda lo que te dije antes de irte";
      String m25s1009= "No importa cuanto tiempo pase, nueve meses, diez años, seguiras siendo igual de especial para mi";
    String m26s1009= "Te amo";
       String m27s1009= "Te amo";
    //Mensaje 0
    if(time4>=0 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m0s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 1
    if(time4>=1 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m1s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 2
    if(time4>=3 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m2s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 3
    if(time4>=5 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m3s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 4
    if(time4>=7 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m4s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 5
    if(time4>=10 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m5s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 6
    if(time4>=14 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m6s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 7
    if(time4>=17 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m7s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 8
    if(time4>=20 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m8s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 9
    if(time4>=23 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m9s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 10
    if(time4>=25 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m10s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 11
    if(time4>=29 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m11s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 12
    if(time4>=32 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m12s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 13
    if(time4>=35 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m13s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 14
    if(time4>=39 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(azul); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(LEFT); fill(blanco); text (m14s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 15
    if(time4>=45 && seleccion4==1009){ 
      up+=rLn3+I;
      fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
      textAlign(LEFT); fill(blanco); text (m15s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }
    //Mensaje 16
    if(time4>=48 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m16s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 18
    if(time4>=51 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m18s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 19
    if(time4>=54 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m19s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 20
    if(time4>= 62 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m20s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
    //Mensaje 21
    if(time4>=66 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m21s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 22
    if(time4>=70 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m22s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 23
    if(time4>=78 && seleccion4==1009){ 
      up+=rLn2+I;
      fill(blanco); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
      textAlign(RIGHT); fill(negro); text (m23s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    //Mensaje 24
    if(time4>=82 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m24s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 25
    if(time4>=88 && seleccion4==1009){ 
      up+=rLn3+I;
      fill(azul); rect (posX1,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
      textAlign(LEFT); fill(blanco); text (m25s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn3+I; }
    //Mensaje 26
    if(time4>=92 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(blanco); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(RIGHT); fill(negro); text (m26s1009, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
    //Mensaje 27
    if(time4>=95 && seleccion4==1009){ 
      up+=rLn1+I;
      fill(azul); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
      textAlign(LEFT); fill(blanco); text (m27s1009, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  
  
  
  
  //----------------------------------------------------------------------------------------
  //GRAFICA DE INTERFAZ
  //----------------------------------------------------------------------------------------
  if (interfaz0==true && seleccion==0){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  }
  if (interfaz1==true && seleccion==1000 || interfaz1==true && seleccion==5){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  }
  if (interfaz2==true && seleccion2==2000 || interfaz2==true && seleccion2==1005 || interfaz2==true && seleccion2==10){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  } 
  if (interfaz3==true && seleccion3==1025 || interfaz3==true && seleccion3==1006){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  }   
    



  //----------------------------------------------------------------------------------------
  //OPCIONES
  //----------------------------------------------------------------------------------------
  //Eleccion 1
  if (interfaz0==true && seleccion==0){ textAlign(RIGHT); 
    fill(0); text ("Amor, que me querias decir?", posX2-20,opcionY1+13, anchX,rLn1);   //seleccion=1000
    fill(0); text ("Es uno de los del frances?", posX2-20,opcionY2+13, anchX,rLn1); //seleccion=5
  }
  //Eleccion 2 (seleccion=1000)
  //Es uno de los del frances
  if (interfaz1==true && seleccion==1000){ textAlign(RIGHT); 
    fill(0); text ("Como se llama?", posX2-20,opcionY1+13, anchX,rLn1);   //seleccion=2000
    fill(0); text ("Si... es solo que... no me lo esperaba", posX2-20,opcionY2+13, anchX,rLn1); //seleccion=1005
  }
  //Eleccion 2 (seleccion=5)
  //Amor, que me querias decir?
  if (interfaz1==true && seleccion==5){ textAlign(RIGHT); 
    fill(0); text ("No", posX2-20,opcionY1+13, anchX,rLn1);   //seleccion=1005
    fill(0); text ("Como se llama?", posX2-20,opcionY2+13, anchX,rLn1); //seleccion=10
  }
  //Eleccion 3 (seleccion=2000)
  //Si... es solo que... no me lo esperaba
  if (interfaz2==true && seleccion2==2000){ textAlign(RIGHT); 
    fill(0); text ( "Para, no quiero saber más", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=2020 
    fill(0); text ("Lucy, tranquila, lo entiendo", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=2001
  }
  //Eleccion 3 (seleccion=1005)
  //Como se llama?
  if (interfaz2==true && seleccion2==1005){ textAlign(RIGHT); 
    fill(0); text ("No responder...", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1025
    fill(0); text ("Cuantas veces?", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1006
  }
  //Eleccion 3 (seleccion=10)
  //No
  if (interfaz2==true && seleccion2==10){ textAlign(RIGHT); 
    fill(0); text ("No responder...", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=30
    fill(0); text ("No sigas.", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=11
  }  
  //Eleccion 4 (seleccion=1025)
  //No responder... 1
  if (interfaz3==true && seleccion3==1025){ textAlign(RIGHT); 
    fill(0); text ("No responder...", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1046
    fill(0); text ("Linda, no pasa nada, tranquila", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1028
  }  
  //Eleccion 4 (seleccion=1006)
  //Cuantas veces?
  if (interfaz3==true && seleccion3==1006){ textAlign(RIGHT); 
    fill(0); text ("Y ahora qué? le quieres? te gusta?", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1027
    fill(0); text ("Creo que estoy al borde de un ataque", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1009
  }  
  
  

  //----------------------------------------------------------------------------------------
  //ESTRUCTURA
  //----------------------------------------------------------------------------------------
  fill(#496EA3); rect(0,0, width, 80);
  fill(blanco); rect ((width-anchX)-margen,(height-rLn1)-margen, anchX, rLn1,B,B,B,B); 
  String reiniciar= "A = adelantar R= Reiniciar";
  fill(#DADADA); text (reiniciar, 345, 565);
  
  image (Perfil, 25,12);
  
  //BLOQUEO DE PANTALLA
  if(time>=45 && seleccion==0){
    fade= constrain(fade, 0, 255);
    fill(0,fade); rect (0,0, width, height);
    fill(255,(fade*1.4)-125); text("30 minutos después", (width/2)-112, height/2);
    fade+= 4;
    if (time>=49){
      fade-=8;
    }
  }
  
  
  
  
  //----------------------------------------------------------------------------------------
  //FINALES
  //----------------------------------------------------------------------------------------  
  //Final C (seleccion= 2020)
  if(time3>=12 && seleccion3==2020){
    nombreFinal[0] = "Final [C]";
    nombreFinal[1] = "[C]alla";
    finales();
  }
  //Final P (seleccion= 2001)
  if(time3>=52 && seleccion3==2001){
    nombreFinal[0] = "Final [P]";
    nombreFinal[1] = "[P]or última vez";
    finales();
  }
  //Final S (seleccion= 1046)
  if(time4>=48 && seleccion4==1046){
    nombreFinal[0] = "Final [S]";
    nombreFinal[1] = "[S]ilencio";
    finales();
  }
  //Final R (seleccion= 1028)
  if(time4>=88 && seleccion4==1028){
    nombreFinal[0] = "Final [N]";
    nombreFinal[1] = "Isla de sueaños [R]otos";
    finales();
  }  
  //Final F (seleccion= 1027)
  if(time4>=88 && seleccion4==1027){
    nombreFinal[0] = "Final [F]";
    nombreFinal[1] = "Hisoria de una pareja [F]eliz";
    finales();
  }  
  //Final I (seleccion= 1009)
  if(time4>= 102 && seleccion4==1009){
    nombreFinal[0] = "Final [I]";
    nombreFinal[1] = "Hisoria de un amor [I]ncierto";
    finales();
  }  
  //Final U (seleccion= 1028)
  if(time4>=48 && seleccion4==1046){
    nombreFinal[0] = "Final [U]";
    nombreFinal[1] = "[Ú]ltima Fantasía";
    finales();
  }  
  //Final M (seleccion= 30 o 11)
  if(time3>=27 && seleccion3==30 || time3>=20 && seleccion3==11){
    fade3= constrain(fade3, 0, 1000);
    fill(0,fade3); rect (0,0, width, height);
    textAlign (CENTER);
    fill(255,(fade3-350)); text("Final [M]", (width/2), height/2-15-moveCreditos);
    fill(255,(fade3-600)); text("[M]entiras", (width/2), height/2+15-moveCreditos);
    fade3+= 3;
  }
  
  

  //----------------------------------------------------------------------------------------
  //Creditos
  //----------------------------------------------------------------------------------------  
  if(fadeFinal==1003){
    moveCreditos+= 1.8;
    textAlign (CENTER);
    text("Programador", (width/2)-120, (height+330-moveCreditos)); 
    text("Diego Jimenez", (width/2)+120, (height+330-moveCreditos));
    
    text("Guionista", (width/2)-120, (height+360-moveCreditos)); 
    text("Diego Jimenez", (width/2)+120, (height+360-moveCreditos));
    
    text("Lucy", (width/2)-120, (height+390-moveCreditos)); 
    text("Isabella Marinelli", (width/2)+120, (height+390-moveCreditos));
  }
  if(fade3==1003){
    suma++; 
    if (suma>60){
      time5++; suma=0;
  }
    moveCreditos+=2.5;
    textAlign (CENTER);
    text("Progrador", (width/2)-120, (height+330-moveCreditos)); 
    text("Paul Les Tranda", (width/2)+120, (height+330-moveCreditos));   
    text("Guiosta", (width/2)-120, (height+360-moveCreditos)); 
    text("CarOL GiNEbra", (width/2)+120, (height+360-moveCreditos)); 
    text("Lucy", (width/2)-120, (height+390-moveCreditos)); 
    text("MarIENl Sus", (width/2)+120, (height+390-moveCreditos));  
    text("Msuica", (width/2)-120, (height+420-moveCreditos)); 
    text("HAnZ SiMEl", (width/2)+120, (height+420-moveCreditos));  
    text("Diseñador", (width/2)-120, (height+450-moveCreditos)); 
    text("Duanes MICHalsl", (width/2)+120, (height+450-moveCreditos));
  }
  if(time5>=9){
    moveCreditos-=10;
    if(time5>=12){
      text("[M]entiras", (width/2), height/2);
  }
    if(time5>=15){
      time=4;
      time0=4;
      time2=4;
      time3=4;
      time4=4;
      time5=0;
      moveCreditos=0;
      seleccion0=0;
      seleccion=0;
      seleccion2=0;
      seleccion3=0;
      seleccion4=0;
      fade3= 0;
      up= 0;
    }
  }
  
  
  
  
  //ACIONES DE TECLADO
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      float a = 0.5;
      time+=a;
      time0+=a;
      time2+=a;
      time3+=a;
      time4+=a;
    }
  } else {
    if (key == 'r' || key == 'R') {
      time=4;
      time0=4;
      time2=4;
      time3=4;
      time4=4;
      time5=0;
      moveCreditos=0;
      seleccion0=0;
      seleccion=0;
      seleccion2=0;
      seleccion3=0;
      seleccion4=0;
      fade2= 0;
      fade3= 0;
    }
  }
}





void mousePressed(){  
  if(interfaz0==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      interfaz0=false; seleccion+=5; time0= 151; time=0; 
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      interfaz0=false; seleccion+= 1000; time0= 151; time=0; 
    }
  }  
  if(interfaz1==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      seleccion2= seleccion;
      interfaz1=false; seleccion2+= 5; time2=0; time=151;     
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      seleccion2= seleccion;
      interfaz1=false; seleccion2+= 1000; time2=0; time=151;  
    }
  }
  if(interfaz2==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      seleccion3= seleccion2;
      interfaz2=false; seleccion3+= 20; time3=0; time2=151;
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      seleccion3= seleccion2;
      interfaz2=false; seleccion3+= 1; time3=0; time2=151;
    }
  }
  if(interfaz3==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      seleccion4= seleccion3;
      interfaz3=false; seleccion4+= 21; time4=0; time3=151;
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      seleccion4= seleccion3;
      interfaz3=false; seleccion4+= 3; time4=0; time3=151;
    }
  }
}


void finales() {
  fadeFinal= constrain(fadeFinal, 0, 1000);
  fill(0,fadeFinal); rect (0,0, width, height);
  textAlign (CENTER);
  fill(255,(fadeFinal-350)); text(nombreFinal[0], (width/2), height/2-15-moveCreditos);
  fill(255,(fadeFinal-600)); text(nombreFinal[1], (width/2), height/2+15-moveCreditos);
  fadeFinal+= 3;
}
