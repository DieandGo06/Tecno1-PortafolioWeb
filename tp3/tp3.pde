boolean interfaz1, interfaz2, interfaz3, interfazNula;
int rLn1, rLn2, rLn3, i, I;
int posX1, posX2, posY, anchX;
int posXt1, posXt2, posYt, anchXt, altoYt;
int margen, time, suma, b, B;
int botonY1, distY, seleccion;
int up, opcionY1, opcionY2;
int fade;
PFont font;
PImage Perfil;

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
}

void draw(){
  background(#ECEFF1);
  textFont(font);
  
  //Temporizador
  suma++; 
  if (suma>60){
    time++; suma=0;
    println(seleccion);
  }
  
  //Datos iniciales
  posY= 470-up; posYt= posY+13;
  //----------------------------------------------------------------------------------------
  //PANTALLA DE INICIO
  //----------------------------------------------------------------------------------------
  String m1E= "Te quiero";
  String m2E= "hola, cómo estás? cómo dormiste?";
  String m3E= "Wow, te despertaste temprano";
  String m4E= "Yo, bien, y tu?";
  String m5E= "estoy bien pero apenas pude dormir";
  String m6E= "Pesadillas?";
  String m7E= "nonono, para nada";
  String m8E= "para nada";
  fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); 
    textAlign(RIGHT); fill(#000000); text(m1E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up=rLn1+I;   fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); 
textAlign(LEFT); fill(#FFFFFF); text(m2E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(#000000); text(m3E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(#000000); text(m4E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); 
textAlign(LEFT); fill(#FFFFFF); text(m5E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;  fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b);
    textAlign(RIGHT); fill(#000000); text(m6E, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); 
textAlign(LEFT); fill(#FFFFFF); text(m7E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
    
  posY+= rLn1+I; up+=rLn1+I;   fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); 
textAlign(LEFT); fill(#FFFFFF); text(m8E, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I;
  posY+= rLn1+I; 
  
  
  //----------------------------------------------------------------------------------------
  //ELECCION 1
  //----------------------------------------------------------------------------------------  
    String m00E1= "es solo que";
    String m1E1= "amor";
    String m2E1= "x mensaje eliminado";
    String m3E1= "que paso? jajaja tu nunca borras los mensajes";
    String m4E1= "tengo contarte algo";
    String m5E1= "dime";
    String m6E1= "algo malo";
    String m6BE1= "sobre nosotros?";
    String m6CE1= "si...";
    String m7E1= "Puedo pasear a Rock? o prefieres hablar antes?";
    String m8E1= "si, tranquilo, saca a rocky, sino te va morder";
    String m9E1= "voy a comer mientras";
    String m10E1= "Hi";
    String m11E1= "hi";
  //Mensaje 0 
  if(time>=8 && seleccion==0){//Mensaje eliminado
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m00E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time>=10 && seleccion==0){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b);
    textAlign(LEFT); fill(#FFFFFF); text (m1E1, posXt1,posYt, anchXt, altoYt); }
  //Mensaje 2  
  if(time>=12 && seleccion==0){//Mensaje eliminado
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m2E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 3
  if(time>=15 && seleccion==0){
    up+=rLn2+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(#000000); text (m3E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }
  //Mensaje 4
  if(time>=18 && seleccion==0){
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m4E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 5
  if(time>=21 && seleccion==0){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m5E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 6
  if(time>=24 && seleccion==0){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m6E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
//Mensaje 6B
  if(time>=27 && seleccion==0){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m6BE1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 6C
  if(time>=30 && seleccion==0){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m6CE1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 7
  if(time>=34 && seleccion==0){
    up+=rLn2+I; 
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(#000000); text(m7E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 8
  if(time>=38 && seleccion==0){ 
    up+=rLn2+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(#FFFFFF); text(m8E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }
  //Mensaje 9
  if(time>=41 && seleccion==0){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m9E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 10
  if(time>=54 && seleccion==0){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m10E1, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 11
  if(time>=60 && seleccion==0){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m11E1, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  
  //Encendedor de Interfaz
  if(time>=63 && seleccion>=0){
    interfaz1=true;
  }
  
  //----------------------------------------------------------------------------------------
  //ELECCION 2 (seleccion=1000)
  //----------------------------------------------------------------------------------------  
    String m0s1000E2= "Es uno de los del frances?";
    String m1s1000E2= "ya lo sabías?";
    String m2s1000E2= "No, pero me lo imaginaba";
    String m3s1000E2= "cómo?";
    String m4s1000E2= "Lucy, te conozco";
    String m5s1000E2= "Nunca te habia visto tan entusiasmada, menos con un grupo que conoces haces 2 semanas";
    String m6s1000E2= "Cuando me pasaste la foto, ya empece a hacerme la idea, aunque no quería creerlo";
    String m7s1000E2= "Ademas, maria dejo de repetirme que seguiamos siendo novios";
    String m8s1000E2= "hey, estas bien?";
  //Mensaje 0
  if(time>=0 && seleccion==1000){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m0s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time>=4 && seleccion==1000){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m1s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; } 
  //Mensaje 2
  if(time>=7 && seleccion==1000){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m2s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 3
  if(time>=9 && seleccion==1000){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m3s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 4
  if(time>=12 && seleccion==1000){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m4s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }    
  //Mensaje 5
  if(time>=20 && seleccion==1000){
    up+=rLn3+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
    textAlign(LEFT); fill(#000000); text (m5s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn3+I; }        
  //Mensaje 6
  if(time>=28 && seleccion==1000){
    up+=rLn3+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn3,b,b,b,b); posY+= rLn3+I;
    textAlign(LEFT); fill(#000000); text (m6s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn3+I; }           
  //Mensaje 7
  if(time>=32 && seleccion==1000){
    up+=rLn2+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(#000000); text (m7s1000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; }     
  //Mensaje 8
  if(time>=35 && seleccion==1000){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m8s1000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    
  //Encendedor de Interfaz
  if(time>=37 && seleccion>=1000){
    interfaz1=true;
  }    
    
    
  //----------------------------------------------------------------------------------------
  //ELECCION 2 (seleccion=5)
  //----------------------------------------------------------------------------------------      
    String m0s0005E2= "Amor, que me querias decir?";
    String m1s0005E2= "estoy saliendo con alguien";
    String m2s0005E2= "...lo conozco?";
    String m3s0005E2= "no, es del francés";  
    String m4s0005E2= "cariño, estas bien?";
  //Mensaje 0
  if(time>=0 && seleccion==5){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m0s0005E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  //Mensaje 1
  if(time>=6 && seleccion==5){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m1s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 2
  if(time>=14 && seleccion==5){
    up+=rLn1+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(RIGHT); fill(#000000); text (m2s0005E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  if(time>=17 && seleccion==5){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m3s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }
  if(time>=30 && seleccion==5){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m4s0005E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }     
    
  //Encendedor de Interfaz
  if(time>=35 && seleccion>=1000){
    interfaz1=true;    
  }

    
  //----------------------------------------------------------------------------------------
  //ELECCION 3 (seleccion=2000)
  //----------------------------------------------------------------------------------------      
    String m0s2000E2= "Si... es solo que... no se... no me lo esperaba";
    String m1s2000E2= "no podía seguir sin decirte";
    String m2s2000E2= "sentía que  te estaba siendo infiel aunque no tuviese sentido";  
  //Mensaje 0
  if(time>=0 && seleccion==2000){
    up+=rLn2+I;
    fill(#FFFFFF); rect (posX2,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(RIGHT); fill(#000000); text (m0s2000E2, posXt2,posYt, anchXt, altoYt); posYt+= rLn2+I; } 
  //Mensaje 1
  if(time>=4 && seleccion==2000){ 
    up+=rLn1+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn1,b,b,b,b); posY+= rLn1+I;
    textAlign(LEFT); fill(#FFFFFF); text (m1s2000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn1+I; }  
  //Mensaje 2
  if(time>=10 && seleccion==2000){ 
    up+=rLn2+I;
    fill(#517BBE); rect (posX1,posY, anchX,rLn2,b,b,b,b); posY+= rLn2+I;
    textAlign(LEFT); fill(#FFFFFF); text (m2s2000E2, posXt1,posYt, anchXt, altoYt); posYt+= rLn2+I; }  
    
  //Encendedor de Interfaz
  if(time>=14 && seleccion>=2000){
    interfaz2=true;    
  }
  

  
  //----------------------------------------------------------------------------------------
  //GRAFICA DE INTERFAZ
  //----------------------------------------------------------------------------------------
  if (interfaz1==true && seleccion==0 || interfaz1==true && seleccion==1000 || interfaz1==true && seleccion==5){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  }
  if (interfaz2==true &&  seleccion==1020 || interfaz2==true && seleccion==2000){
    up+= 135;  
    fill(#5E8FC9); rect (0,height-205, width,205);
    fill(#ECEFF1); rect (posX2,opcionY1, anchX,rLn1,b,b,b,b); 
    fill(#ECEFF1); rect (posX2,opcionY2, anchX,rLn1,b,b,b,b); 
  }
  
  //----------------------------------------------------------------------------------------
  //OPCIONES
  //----------------------------------------------------------------------------------------
  //Eleccion 1
  if (interfaz1==true && seleccion==0){ textAlign(RIGHT); 
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
  if (interfaz2==true && seleccion==2000){ textAlign(RIGHT); 
    fill(0); text ("Lucy, tranquila, lo entiendo", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=2020
    fill(0); text ("No me cuentes mas, por favor", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=2001
  }
  //Eleccion 3 (seleccion=1005)
  //Como se llama?
  if (interfaz2==true && seleccion==1005){ textAlign(RIGHT); 
    fill(0); text ("Cuantas veces?", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1025
    fill(0); text ("No reponder...", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1006
  }
  //Eleccion 3 (seleccion=10)
  //No
  if (interfaz2==true && seleccion==10){ textAlign(RIGHT); 
    fill(0); text ("No hables... quiero estar solo", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=30
    fill(0); text ("No responder...", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=11
  }  
  //Eleccion 4 (seleccion=1025)
  //No responder... 1
  if (interfaz3==true && seleccion==1025){ textAlign(RIGHT); 
    fill(0); text ("Lucy, tranquila, lo entiendo", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1046
    fill(0); text ("No responder...", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1028
  }  
  //Eleccion 4 (seleccion=1006)
  //Cuantas veces?
  if (interfaz3==true && seleccion==1025){ textAlign(RIGHT); 
    fill(0); text ("Por que no me dijiste?", posX2-20,opcionY1+13, anchX,rLn1);  //seleccion=1027
    fill(0); text ("Y que? ahora te gusta mas el?", posX2-20,opcionY2+13, anchX,rLn1);  //seleccion=1009
  }  
  
  //----------------------------------------------------------------------------------------
  //ESTRUCTURA
  //----------------------------------------------------------------------------------------
  fill(#496EA3); rect(0,0, width, 80);
  fill(#FFFFFF); rect ((width-anchX)-margen,(height-rLn1)-margen, anchX, rLn1,B,B,B,B);
  fill(#DADADA); text ("presione cualquier tecla para reiniciar", 345, 565);
  
  image (Perfil, 25,12);
  
  //BLOQUEO DE PANTALLA
  if(time>=45 && seleccion>=0){
    fade= constrain(fade, 0, 255);
    fill(0,fade); rect (0,0, width, height);
    fill(255,(fade*1.4)-125); text("30 minutos después", (width/2)-112, height/2);
    fade+= 4;
    if (time>=49){
      fade-=8;
    }
  }

  
}



void mousePressed(){
  if(interfaz1==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      interfaz1=false; seleccion+= 5; time=0;
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      interfaz1=false; seleccion+= 1000; time=0;
    }
  }
  if(interfaz2==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      interfaz2=false; seleccion= 20; time=0;
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      interfaz2=false; seleccion= 1; time=0;
    }
  }
  if(interfaz3==true){
    if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1) && (mouseY<botonY1+rLn1)){
      interfaz3=false; seleccion= 21; time=0;
    } else if((mouseX>posX2) && (mouseX<posX2+anchX) && (mouseY>botonY1-distY) && (mouseY<botonY1+rLn1-distY)){
      interfaz3=false; seleccion= 3; time=0;
    }
  }
}
void keyPressed(){
  seleccion=0;
  time+=6;
}
