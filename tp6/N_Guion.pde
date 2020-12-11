class Guion {
  //"m" = mensajes de la mujer
  //"h" = mensajes del hombre
  Guion_Capitulo0 cap0; 
  Guion_Capitulo1 cap1;
  Guion_Capitulo2 cap2;
  Guion_Capitulo3 cap3;
  Guion_Capitulo4 cap4;

  Guion() {
    cap0 = new Guion_Capitulo0();
    cap1 = new Guion_Capitulo1();
    cap2 = new Guion_Capitulo2();
    cap3 = new Guion_Capitulo3();
    cap4 = new Guion_Capitulo4();
  }//end Guion
}//end class Guion





class Guion_Capitulo0 {
  String [] primera_pantalla = {"", 
  /* h */    "Cómo dormiste?", 
  /* m */    "bien y tu?", 
  /* h */    "Bien, aunque luna me despertó lamiendome la cara de forma desesperada", 
  /* m */    "awww", 
  /* h */    "A las 3 de la mañana...", 
  /* m */    "ains", 
  /* m */    "solo intenta demostrar su amor", 
  /* m */    "dejale demostrar su amor!", 
  /* h */    "Le mordi la pata", 
  /* h */    "Me miro feo"}; 
  float [] ancho_primera_pantalla = new float [primera_pantalla.length];

  String [] texto_introduccion = {"", 
  /* h */    "Y se fue molesta", 
  /* m */    "nooo, su patita :(", //m
  /* h */    "Se lo merece por fea", 
  /* h */    "Por cierto, que hora es alla?", 
  /* m */    "6 20", //m
  /* ELECCION 1 */    "", 
  /* h */    "La lucy que conozco, jamas se despertaría antes de las 8", 
  /* m */    "la pasé super mal", //m
  /* m */    "mi cerebro no me quiso dejar dormir", //m
  /* h */    "No, cerebro, dejala dormir", 
  /* h */    "Ella necesita sus 14 horas de sueño", 
  /* m */    "shi", //m
  /* h */    "Pesadillas?", 
  /* m */    "no", //m
  /* ELECCION 2 */    "", 
  /* h */    "*modo psicologo activo*", 
  /* m */    "no quiero hablar de eso ahora", //m
  /* m */    "te cuento más tarde, sí?", //m
  /* m */    "además, no tienes que irte al trabajo que si ya?", //m
  /* h */    "Nop, feriado, dia del trabajador", 
  /* m */    "yay, que bien :)", //m
  /* m */    "si quieres, en un rato hacemos una videollamada", //m
  /* ELECCION 3 */    "", 
  /* m */    "a las 9?", 
  /* h */    "A las 10 mejor", 
  /* m */    "oki", 
  /* m */    "voy a comer, si?", 
  /* m */    "haaaaaaaambreeeeeeeee", 
  /* ELECCION 4+ JUEGO */    "", 
  /* m */    "hola again", 
  /* h */    "Te llamo?", 
  /* m */    "no", 
  /* m */    "no creo que pueda", 
  /* ELECCION 5*/
  /* m */    "amor debo contarte algo", 
  /* m */    "x     mensaje eliminado", 
  /* relleno */    "", 
  /* m */    "solo no me odies", 
  /* h */    "Nunca podria odiarte, linda", 
  /* m */    "no necesito que respondas al momento", 
  /* m */    "si te sientes abrumado", 
  /* m */    "intenta distraerte", 
  /* m */    "hazle cariño a luna", 
  /* m */    "juega", 
  /* m */    "puedo esperar, si?", 
  /* m */    "solo intentemos no arruinar más todo"};
  /* ELECCION 6*/
  float [] ancho_introduccion = new float [texto_introduccion.length];

  Guion_Capitulo0 () {
    for (int k=0; k<primera_pantalla.length; k++) { //primera_pantalla
      ancho_primera_pantalla[k] = textWidth(primera_pantalla[k]);
      ancho_primera_pantalla[k] = constrain(ancho_primera_pantalla[k], 0, (width/6)*3.7);//ancho maximo
    }
    for (int k=0; k<texto_introduccion.length; k++) { //Introduccion
      ancho_introduccion[k] = textWidth(texto_introduccion[k]);
      ancho_introduccion[k] = constrain(ancho_introduccion[k], 0, (width/6)*3.7);
    }
  }//end capitulo0
}//----------------------------------------------------------------------------------------------------------end class Capitulo0



class Guion_Capitulo1 {
  String [] texto_ruta_A = {"", 
  /* m */    "lo sabías?", 
  /* ELECCION 1*/    " ", 
  /* m */    "gaby te contó?", 
  /* h */    "No", 
  /* h */    "Solo te conozco", 
  /* h */    "Desde cuando?", 
  /* ELECCION 2*/    " ", //amor, responder, por favor //desde la primera vez      
  /* m */    "disculpa", 
  /* h */    "Desde cuando?", 
  /* m */    "dos semanas", 
  /* h */    "No quería creerlo...", 
  /* m */    "cómo estas?", 
  /* ELECCION 3*/
  };
  float [] ancho_ruta_A = new float [texto_ruta_A.length];

  String [] texto_ruta_B = {"", 
  /* m */    "estoy saliendo con alguien", 
  /* ELECCION 1*/    " ", // Estas bromeando, no? //Lo conozco?
  /* m */    "no", 
  /* m */    "es del francés", 
  /* ELECCION 2*/    " ", // No me gustan esas bromas(Sabes que no me gusta que bromees con eso)   //Rock se siente traicionado
  /* m */    "no es broma", 
  /* h */    "Aja", 
  /* m */    "que tengo que hacer para que me creas", 
  /* h */    "Mmm…", 
  /* h */    "Juralo por jack, la cebra con rayas, el peluche con mas rayas", 
  /* m */    "lo juro por jack, la cebra con rayas, el peluche con más rayas", 
  /* ELECCION 3*/    " ", //Desde cuando me mientes?  //No responder
  /* m */    "solo han sido 2 semanas", 
  /* ELECCION 4*/    "  ", //Solo dos semanas!?  //No responder
  /* m */    "disculpa", 
  /* m */    "cómo estás?"
  /* ELECCION 5*/    //Como se llama  //No responder
  };
  float [] ancho_ruta_B = new float [texto_ruta_B.length];

  Guion_Capitulo1 () {
    for (int k=0; k<texto_ruta_A.length; k++) {
      ancho_ruta_A[k] = textWidth(texto_ruta_A[k]);
      ancho_ruta_A[k] = constrain(ancho_ruta_A[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_B.length; k++) {
      ancho_ruta_B[k] = textWidth(texto_ruta_B[k]);
      ancho_ruta_B[k] = constrain(ancho_ruta_B[k], 0, (width/6)*3.7);
    }
  }//end Capitulo1
}//----------------------------------------------------------------------------------------------------------end class Capitulo1



class Guion_Capitulo2 {
  String [] texto_ruta_A_left = {"", 
  /* m */    "disculpa", 
  /* m */    "no podía seguir con esto", 
  /* h */    "Con que?", 
  /* Elección 1 */    "", //(Mintiéndome?, Con lo nuestro?)
  /* m */    "mintiéndote, con lo nuestro y con todo", 
  /* m */    "y sabes que no quiero hacerlo", 
  /* m */    "pero tampoco quiero sentir que te estoy siendo infiel", 
  /* m */    "y se que no tiene sentido, pero así me siento", 
  /* Elección 2*/    ""  //(Es algo serio?, Cómo te sientes?)
  };

  String [] texto_ruta_A_B = {"", 
  /* m */    "daniel", 
  /* Elección 1 */    "", //(Te gusta?, Te gusta más el?)
  /* m */    "wtf!", 
  /* m */    "no", 
  /* m */    "apenas lo conozco", 
  /* m */    "solo me atrae", 
  /* Elección 2*/    "", //(Disculpa, Es el alto de la foto?)
  };

  String [] texto_ruta_B_right = {"", 
  /* m */    "axi?", 
  /* Elección 1 */    "", //(No responder, No me llames asi)
  /* m */    "oki, disculpa", 
  /* m */    "no te lo debí ocultar", 
  /* m */    "prometimos que lo diríamos", 
  /* m */    "pero sabía que te haría sentir muy mal", 
  /* m */    "y no quería que te sintieras así por una tontería", 
  /* m */    "y no es que lo de ahora sea algo grande", 
  /* m */    "pero no podía continuar sin decírtelo", 
  /* m */    "disculpa", 
  /* m */    "cómo estás?", 
  /* m */    "quieres seguir hablando de esto o mejor cambiamos de tema?", 
  /* Elección 2 */    "", //(No responder, No quiero hablar)
  /* m */    "qué quieres hacer?", 
  /* m */    "amor, por favor", 
  /* Elección 3 */    "" //(No responder, Bloquear)
  };

  float [] ancho_ruta_A_left = new float [texto_ruta_A_left.length];
  float [] ancho_ruta_A_B = new float [texto_ruta_A_B.length];
  float [] ancho_ruta_B_right = new float [texto_ruta_B_right.length];

  Guion_Capitulo2 () {
    for (int k=0; k<texto_ruta_A_left.length; k++) {
      ancho_ruta_A_left[k] = textWidth(texto_ruta_A_left[k]);
      ancho_ruta_A_left[k] = constrain(ancho_ruta_A_left[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_A_B.length; k++) {
      ancho_ruta_A_B[k] = textWidth(texto_ruta_A_B[k]);
      ancho_ruta_A_B[k] = constrain(ancho_ruta_A_B[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_B_right.length; k++) {
      ancho_ruta_B_right[k] = textWidth(texto_ruta_B_right[k]);
      ancho_ruta_B_right[k] = constrain(ancho_ruta_B_right[k], 0, (width/6)*3.7);
    }
  }//end Capitulo2
}//----------------------------------------------------------------------------------------------------------end class Capitulo2



class Guion_Capitulo3 {
  String [] texto_ruta_A_left_left = {"", 
  /* m */    "no sé", 
  /* m */    "apenas lo conozco", 
  /* h */    "Pero quieres que lo sea?", 
  /* m */    "sí", 
  /* Elección 1 */    "", //(No te da miedo?, Pero temes)
  /* h */    "De… ya sabes?", 
  /* h */    "Querer a alguien más…", 
  /* m */    "sí", 
  /* m */    "pero quiero intentarlo", 
  /* m */    "creo que me puede ayudar", 
  /* m */    "alex?", 
  /* h */    "8 meses…", 
  /* h */    "8 meses desde que me fui", 
  /* h */    "Y a pesar del tiempo", 
  /* Elección 2 */    "", //(No estoy listo para esta conversación, Te sigo extrañando igual )
  };
  float [] ancho_ruta_A_left_left = new float [texto_ruta_A_left_left.length];

  String [] texto_ruta_A_left_right = {"", 
  /* m */    "igual que tú, gallo", 
  /* m */    "mal", 
  /* Elección 1 */    "", //(Te quiero, Quisiera poder abrazarte)
  /* m */    "yo más", 
  /* m */    "pero hay que seguir adelante, no?", 
  /* h */    "A veces pienso que fue un error irme", 
  /* m */    "tenías que hacerlo lindo", 
  /* Elección 2 */    "", //(Lo sé, Maldito maduro)
  /* m */    "maldito maduro", 
  /* h */    "Maldito chavez", 
  /* m */    "malditos todos", 
  /* Elección 3 */    "" //(Te amo, Creo que deberias intentarlo…)
  };
  float [] ancho_ruta_A_left_right = new float [texto_ruta_A_left_right.length];

  String [] texto_ruta_A_B_left = {"", 
  /* m */    "no te disculpes", 
  /* m */    "sé que es difícil", 
  /* m */    "llevo dos semanas sintiéndome igual", 
  /* Elección 1 */    "", //(En la mierda?, Culpable?)
  /* m */    "sí", 
  /* m */    "y siento que debería estar emocionada", 
  /* m */    "y una parte de mi lo está", 
  /* m */    "pero la otra siente como si te estuviera engañando", 
  /* Elección 2 */    "" //(Creo que lo entiendo, Lo hiciste, me mentiste)
  };
  float [] ancho_ruta_A_B_left = new float [texto_ruta_A_B_left.length];

  String [] texto_ruta_A_B_right = {"", 
  /* m */    "qué foto?", 
  /* h */    "La grupal que me pasaste el primer día", 
  /* h */    "Es el de la izquierda junto a ti?", 
  /* m */    "cómo lo sabes?", 
  /* Elección 1 */    "", //(Cuántos años nos lleva?, Es el profesor, verdad?)
  /* m */    "solo nos 5 años", 
  /* h */    "Solo 5???", 
  /* m */    "tampoco es tanto, 21, 26", 
  /* h */    "Si tú lo dices…", 
  /* m */    "quien te dijo que era el?", 
  /* Elección 2 */    "", //(Joder, te conozco, Pensaste en mi?)
  /* h */    "Primera cita", 
  /* h */    "Una dulceria, como la nuestra", 
  /* h */    "Pediste un pie limon con una bola de helado de vainilla", 
  /* h */    "Bebida… una malteada de manzana", 
  /* h */    "Acerte?", 
  /* h */    "Sí, acerte", 
  /* m */    "alex, cálmate", 
  /* m */    "estas actuando como un idiota", 
  /* Elección 3 */    ""  //(Disculpa, Cuentame, qué tal folla?)
  };
  float [] ancho_ruta_A_B_right = new float [texto_ruta_A_B_right.length];

  String [] texto_final_B1 = {"", 
  /* m */    "sabíamos que esto iba a pasar", 
  /* m */    "pero te entiendo si no quieres hablarme", 
  /* m */    "te quiero mucho", 
  /* m */    "bye"
  };
  float [] ancho_final_B1 = new float [texto_final_B1.length];

  Guion_Capitulo3 () {
    for (int k=0; k<texto_ruta_A_left_left.length; k++) {
      ancho_ruta_A_left_left[k] = textWidth(texto_ruta_A_left_left[k]);
      ancho_ruta_A_left_left[k] = constrain(ancho_ruta_A_left_left[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_A_left_right.length; k++) {
      ancho_ruta_A_left_right[k] = textWidth(texto_ruta_A_left_right[k]);
      ancho_ruta_A_left_right[k] = constrain(ancho_ruta_A_left_right[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_A_B_left.length; k++) {
      ancho_ruta_A_B_left[k] = textWidth(texto_ruta_A_B_left[k]);
      ancho_ruta_A_B_left[k] = constrain(ancho_ruta_A_B_left[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_ruta_A_B_right.length; k++) {
      ancho_ruta_A_B_right[k] = textWidth(texto_ruta_A_B_right[k]);
      ancho_ruta_A_B_right[k] = constrain(ancho_ruta_A_B_right[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_B1.length; k++) {
      ancho_final_B1[k] = textWidth(texto_final_B1[k]);
      ancho_final_B1[k] = constrain(ancho_final_B1[k], 0, (width/6)*3.7);
    }
  }//end Capitulo3
}//----------------------------------------------------------------------------------------------------------end class Capitulo3



class Guion_Capitulo4 {
  String [] texto_final_A1 = {"", 
  /* m */    "qué dramático jajaja", 
  /* h */    "Te odio", 
  /* m */    "yo tampoco estoy lista", 
  /* m */    "pero no podía seguir sin decirte", 
  /* h */    "No me encanta pero… gracias por contarme", 
  /* m */    "de nada", 
  /* m */    "hablamos cuando ambos estemos listos", 
  /* m */    "solo por favor no tardes 10 años", 
  /* h */    "Tratare", 
  /* m */    "oki"
  };
  float [] ancho_final_A1 = new float [texto_final_A1.length];

  String [] texto_final_A2 = {"", 
  /* m */    "yo también te extraño", 
  /* h */    "Como el primer dia?", 
  /* m */    "sip", 
  /* m */    "pero no nos podemos poner con eso", 
  /* m */    "menos ahora", 
  /* m */    "nos sería imposible con otra persona", 
  /* h */    "Oki...", 
  /* m */    "bye axi", 
  /* h */    "Bye lucy"
  };
  float [] ancho_final_A2 = new float [texto_final_A2.length];

  String [] texto_final_A3 = {"", 
  /* h */    "Y sé que no quieres que lo diga", 
  /* h */    "Pero no se… siento que luego será peor", 
  /* m */    "axi", 
  /* h */    "Y quiero poder, sabes", 
  /* m */    "axi", 
  /* h */    "Extrañaba ese apodo", 
  /* m */    "axi", 
  /* h */    "Quieres que pregunte que", 
  /* m */    "axi", 
  /* h */    "Que?", 
  /* m */    "te amo", 
  /* h */    "te amo"
  };
  float [] ancho_final_A3 = new float [texto_final_A3.length];

  String [] texto_final_A4 = {"", 
  /* h */    "Te lo mereces", 
  /* m */    "gracias lindo", 
  /* m */    "tú también te lo mereces", 
  /* m */    "eres muy bueno, lo sabes?", 
  /* h */    "Igual tu", 
  /* m */    "y dime cuando empieces a salir con alguien", 
  /* m */    "no sé… me gustaría saber si… sabes", 
  /* h */    "No creo que mi psicóloga lo apruebe", 
  /* m */    "shhhhhh, me avisas", 
  /* m */    "hasta luego alex", 
  /* h */    "Hasta luego lucy"
  };
  float [] ancho_final_A4 = new float [texto_final_A4.length];

  String [] texto_final_AB1 = {"", 
  /* h */    "Pero es raro en general", 
  /* h */    "Todo lo nuestro ha sido un poco raro en general", 
  /* m */    "shi", 
  /* h */    "A veces pienso que todo hubiera sido más fácil con una ruptura normal", 
  /* m */    "pero lo nuestro no era algo normal", 
  /* m */    "literal no podía haber terminado de otra forma", 
  /* h */    "Con uno de los dos huyendo del país? hahaha", 
    //Inicia fundido….
  /* m */    "básicamente", 
  /* m */    "pero el plan es que me fuera yo, no tú", 
  /* h */    "No me culpes a mi, tú tardaste mucho", 
  /* m */    "yo!? Pero si fueron las universidades", 
    //Termina fundido
    //Siguen hablando
  };
  float [] ancho_final_AB1 = new float [texto_final_AB1.length];

  String [] texto_final_AB2 = {"", 
  /* m */    "sabes que no refiero a eso", 
  /* m */    "además, sabía que te ibas a poner así", 
  /* h */    "asi como?", 
  /* m */    "molesto", 
  /* m */    "crees que no te conozco?", 
    // Inicia fundido….
  /* h */    "Claro, porque saber que estas saliendo con alguien más", 
  /* h */    "Ufff, no te imaginas lo feliz que me pone", 
  /* m */    "no te pido que estés feliz", 
  /* m */    "pero al menos que no ataques por intentar no estancarme"
    //Termina fundido
    //Siguen discutiendo
  };
  float [] ancho_final_AB2 = new float [texto_final_AB2.length];

  String [] texto_final_AB3 = {"", 
  /* m */    "oki", 
  /* m */    "pero es precisamente por esto", 
  /* m */    "que creo que no debemos seguir hablando", 
  /* h */    "Disculpa, estaba en medio de un ataque de ansiedad", 
  /* h */    "Esta es literal la primera vez que no la logro controlar", 
  /* m */    "alex nos estamos haciendo daño", 
  /* h */    "Disculpa", 
  /* m */    "dijimos que nos íbamos a distanciar poco a poco", 
  /* m */    "pero han pasado 9 meses y seguimos hablando todos los días", 
  /* h */    "4 años juntos", 
  /* h */    "Que esperabas?", 
  /* m */    "4 años juntos muy lindos", 
  /* m */    "pero ya pasaron", 
  /* m */    "y hay que seguir adelante", 
  /* h */    "Te amo", 
  /* m */    "adiós alex", 
  /* h */    "No me hagas esto", 
  };
  float [] ancho_final_AB3 = new float [texto_final_AB3.length];

  String [] texto_final_AB4 = {"", 
  /* m */    "no te voy contar lo que hecho o no hecho con él", 
  /* h */    "Pido una valoración, no que me cuentes, oriana", 
  /* m */    "en serio me vas a llamar oriana?", 
  /* h */    "No es ese tu nombre?", 
  /* h */    "Ademas tu me dejaste de llamar axi", 
  /* m */    "acaso crees que eres el único que ha sufrido?", 
  /* m */    "me abandonaste", 
  /* m */    "me dejaste sola", 
  /* h */    "Yo no te abandoné", 
  /* m */    "y finalmente", 
  /* m */    "9 meses después", 
  /* h */    "Y lo sabes", 
  /* m */    "cuando estoy logrando salir adelante", 
  /* m */    "me tratas así", 
  /* h */    "Un clavo no saca otro clavo", 
  /* m */    "adiós alex"
    //Te bloquean
  };
  float [] ancho_final_AB4 = new float [texto_final_AB4.length];
  
  Guion_Capitulo4 () {
    for (int k=0; k<texto_final_A1.length; k++) {
      ancho_final_A1[k] = textWidth(texto_final_A1[k]);
      ancho_final_A1[k] = constrain(ancho_final_A1[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_A2.length; k++) {
      ancho_final_A2[k] = textWidth(texto_final_A2[k]);
      ancho_final_A2[k] = constrain(ancho_final_A2[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_A3.length; k++) {
      ancho_final_A3[k] = textWidth(texto_final_A3[k]);
      ancho_final_A3[k] = constrain(ancho_final_A3[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_A4.length; k++) {
      ancho_final_A4[k] = textWidth(texto_final_A4[k]);
      ancho_final_A4[k] = constrain(ancho_final_A4[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_AB1.length; k++) {
      ancho_final_AB1[k] = textWidth(texto_final_AB1[k]);
      ancho_final_AB1[k] = constrain(ancho_final_AB1[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_AB2.length; k++) {
      ancho_final_AB2[k] = textWidth(texto_final_AB2[k]);
      ancho_final_AB2[k] = constrain(ancho_final_AB2[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_AB3.length; k++) {
      ancho_final_AB3[k] = textWidth(texto_final_AB3[k]);
      ancho_final_AB3[k] = constrain(ancho_final_AB3[k], 0, (width/6)*3.7);
    }
    for (int k=0; k<texto_final_AB4.length; k++) {
      ancho_final_AB4[k] = textWidth(texto_final_AB4[k]);
      ancho_final_AB4[k] = constrain(ancho_final_AB4[k], 0, (width/6)*3.7);
    }
  }//end Capitulo4
}//----------------------------------------------------------------------------------------------------------end class Capitulo4
