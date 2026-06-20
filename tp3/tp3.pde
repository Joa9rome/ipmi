// https://youtu.be/39cwkiuyKMY
PImage referencia;

float intensidad;
float angulo;

void setup() {
  size(800, 400);

  referencia = loadImage("op.jpg");
  referencia.resize(400, 400);

  intensidad = 20;
  angulo = 0;

  rectMode(CORNER);
}

void draw() {

  background(255);

  image(referencia, 0, 0);

  dibujarPatron(600, 200);

  fill(0);
  textSize(14);
  text("A/D = Rotar", 420, 20);
  text("Click = Deformar", 420, 40);
  text("R = Reiniciar", 420, 60);
}

void dibujarPatron(float cx, float cy) {

  pushMatrix();

  translate(cx, cy);
  rotate(angulo);

  int tam = 25;

  for (int fila = -8; fila < 8; fila++) {

    for (int col = -8; col < 8; col++) {

      float x = col * tam;
      float y = fila * tam;

      fill(obtenerColor(fila, col));
      noStroke();

      rect(x, y, tam, tam);

      dibujarPunto(x, y, fila, col, cx, cy);
    }
  }

  popMatrix();
}

color obtenerColor(int fila, int col) {

  if ((fila + col) % 2 == 0) {
    return color(50, 220, 140);
  } else {
    return color(0, 120, 180);
  }
}

void dibujarPunto(float x, float y, int fila, int col, float cx, float cy) {

  float px = cx + x;
  float py = cy + y;

  float d = dist(mouseX, mouseY, px, py);

  float desplazamiento = map(d, 0, 200, intensidad, 0);

  if (desplazamiento < 0) {
    desplazamiento = 0;
  }

  float nx = x;
  float ny = y;

  if (d < 200) {
nx += random(-desplazamiento/5, desplazamiento/5);
ny += random(-desplazamiento/5, desplazamiento/5);
  }

  if ((fila + col) % 2 == 0) {
    fill(255);
  } else {
    fill(30);
  }

  ellipse(nx, ny, 8, 8);
}

void mousePressed() {

  intensidad += 5;

  if (intensidad > 50) {
    intensidad = 50;
  }
}

void keyPressed() {

  if (key == 'a' || key == 'A') {
    angulo -= 0.1;
  }

  if (key == 'd' || key == 'D') {
    angulo += 0.1;
  }

  if (key == 'r' || key == 'R') {

    intensidad = 20;
    angulo = 0;
  }
}
