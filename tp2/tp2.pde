PImage img1, img2, img3, img4, img5;

PFont fuente;

int pantalla = 1;
int tiempo;
float alphaTexto = 0;
float textoY = 420;
float textoX = -300;
float tamTexto = 16;

void setup() {

  size(640, 480);

  img1 = loadImage("imagen 1.jpg");
  img2 = loadImage("imagen 2.jpg");
  img3 = loadImage("imagen 3.jpg");
  img4 = loadImage("imagen 4.jpg");
  img5 = loadImage("imagen 5.jpg");

  // AJUSTAR IMÁGENES
  img1.resize(width, height);
  img2.resize(width, height);
  img3.resize(width, height);
  img4.resize(width, height);
  img5.resize(width, height);

  // FUENTE
  fuente = createFont("Georgia", 22);
  textFont(fuente);

  tiempo = millis();
}

void draw() {

  background(0);
  if (millis() - tiempo > 6000 && pantalla < 18) {

    pantalla++;

    tiempo = millis();
    alphaTexto = 0;
    textoY = 420;

    textoX = -300;

    tamTexto = 16;
  }

  if (pantalla == 1) {

    pantalla1();

  } else if (pantalla == 2) {

    pantalla2();

  } else if (pantalla == 3) {

    pantalla3();

  } else if (pantalla == 4) {

    pantalla4();

  } else if (pantalla == 5) {

    pantalla5();
  }
}
void pantalla1() {

  image(img1, 0, 0);

  animacionTexto();

  textSize(20);
 fill(0, alphaTexto);

  text(
    "Luego de la misteriosa muerte de su madre,\n" +
    "Sam y Dean Winchester crecen viajando junto\n" +
    "a su padre mientras aprenden a cazar\n" +
    "criaturas sobrenaturales.",

    32, textoY + 2
  );
 fill(255, 230, 150, alphaTexto);

  text(
    "Luego de la misteriosa muerte de su madre,\n" +
    "Sam y Dean Winchester crecen viajando junto\n" +
    "a su padre mientras aprenden a cazar\n" +
    "criaturas sobrenaturales.",

    30, textoY
  );
}

void pantalla2() {

  image(img2, 0, 0);

  alphaTexto += 2;

  if (textoX < 35) {

    textoX += 1.5;
  }

  textSize(20);
 fill(0, alphaTexto);

  text(
    "Aunque son hermanos, ambos tienen\n" +
    "personalidades muy distintas.\n\n" +
    "Sam desea una vida normal, mientras\n" +
    "que Dean continúa siguiendo el legado familiar.",

    textoX + 2, 352
  );
fill(255, 230, 150, alphaTexto);

  text(
    "Aunque son hermanos, ambos tienen\n" +
    "personalidades muy distintas.\n\n" +
    "Sam desea una vida normal, mientras\n" +
    "que Dean continúa siguiendo el legado familiar.",

    textoX, 350
  );
}
void pantalla3() {

  image(img3, 0, 0);

  alphaTexto += 2;

  if (tamTexto < 20) {

    tamTexto += 0.05;
  }

  textSize(tamTexto);
  fill(0, alphaTexto);

  text(
    "En cada viaje investigan casos paranormales\n" +
    "relacionados con fantasmas, demonios,\n" +
    "vampiros y antiguas leyendas ocultas\n" +
    "entre las personas.",

    27, 362
  );
  fill(255, 230, 150, alphaTexto);

  text(
    "En cada viaje investigan casos paranormales\n" +
    "relacionados con fantasmas, demonios,\n" +
    "vampiros y antiguas leyendas ocultas\n" +
    "entre las personas.",

    25, 360
  );
}

void pantalla4() {
  image(img4, 0, 0);
  animacionTexto();
  textSize(19);
  fill(0, alphaTexto);
  text(
    "Con el tiempo, la historia evoluciona\n" +
    "hacia una guerra entre el cielo y el infierno,\n" +
    "donde ángeles y demonios buscan controlar\n" +
    "el destino del mundo.",

    27, textoY + 2
  );
  fill(255, 230, 150, alphaTexto);
  text(
    "Con el tiempo, la historia evoluciona\n" +
    "hacia una guerra entre el cielo y el infierno,\n" +
    "donde ángeles y demonios buscan controlar\n" +
    "el destino del mundo.",
    25, textoY
  );
}

void pantalla5() {
  image(img5, 0, 0);
  alphaTexto += 2;
  textSize(20);
  fill(0, alphaTexto);
  text(
    "A pesar de las pérdidas y los peligros,\n" +
    "los hermanos Winchester continúan luchando juntos.\n\n" +
    "Porque para ellos, la familia siempre\n" +
    "será lo más importante.",
    27, 122
  );

  fill(255, 230, 150, alphaTexto);
  text(
    "A pesar de las pérdidas y los peligros,\n" +
    "los hermanos Winchester continúan luchando juntos.\n\n" +
    "Porque para ellos, la familia siempre\n" +
    "será lo más importante.",
    25, 120
  );
fill(120, 0, 0);
  rect(220, 410, 200, 45, 10);
  fill(255);
  textSize(22);
  text("REINICIAR", 245, 440);
}
void animacionTexto() {

  if (alphaTexto < 255) {

    alphaTexto += 2;
  }
  if (textoY > 340) {

    textoY -= 0.5;
  }
}

void mousePressed() {
  if (pantalla == 5 &&
      mouseX > 220 &&
      mouseX < 420 &&
      mouseY > 410 &&
      mouseY < 455) {

    pantalla = 1;

    tiempo = millis();

    alphaTexto = 0;

    textoY = 420;

    textoX = -300;

    tamTexto = 16;
  }
}
