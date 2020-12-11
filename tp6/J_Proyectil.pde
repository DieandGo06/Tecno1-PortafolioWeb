class Proyectil {
  PImage balaNaranja;

  int cantidad_de_proyectiles = 105;
  float [] proyectilX = new float [cantidad_de_proyectiles];
  float [] proyectilY = new float [cantidad_de_proyectiles];
  float [] speedX = new float [cantidad_de_proyectiles];
  float [] speedY = new float [cantidad_de_proyectiles];

  float [] tiempo_de_proyectil = new float [cantidad_de_proyectiles];


  Proyectil() {
    balaNaranja = loadImage("proyectil naranja.png");
    for (int k=0; k<cantidad_de_proyectiles; k++) {
      speedX[k]= random(-1, 2);
      speedY[k]= random(2, 4);
    }//end for
  }//end Proyectil


  void posicionInicial(float x, float y, int k) {
    proyectilX[k]+= x;
    proyectilY[k]+= y;
  }

  void display(float x, float y) {
    imageMode(CENTER);
    image(balaNaranja, x, y);
  }

  void moveBala(int k) {
    proyectilX[k]+= speedX[k];
    proyectilY[k]+= speedY[k];
  }


  //ESQUEMAS DE DISPARO
  void disparoUnico(float textoX, float textoY, int k) {//k = numero de enemigo
    if (proyectilX[k]>0 & proyectilX[k]<width & proyectilY[k]>0 & proyectilY[k]<height) {
      moveBala(k);
      display(proyectilX[k], proyectilY[k]);
    } else {
      if (tiempo_de_proyectil[k] >= 120) {
        proyectilX[k]= textoX;
        proyectilY[k]= textoY;
        speedX[k]*= -1;//Al reiniciarse, se cambia la direccion
        tiempo_de_proyectil[k] = 0;
      }
    }
    tiempo_de_proyectil[k]++;
  }//end Esquemas de Disparo
}//end Class Proyectil
