PImage miImagen;

void setup (){
  size(800,400);
  miImagen= loadImage("Bicicleta.jpg");
}

void draw(){
 background(200);
 image(miImagen, 0, 0, 400, 400);
 //pared
 fill(31, 189, 248);
 quad(400,0, 400,400, 684,230, 725, 0);
 //suelo
 fill(151, 233, 253);
 quad(400,400, 684,230, 800,380, 800,400);
  strokeWeight(2);
 line(700,250,500,400);
 line(730,270,560,400);
 line(760,300,640,400);
 line(790,330,700,400);
 line(790,370,760,400);
 //cielo
 strokeWeight(0);
 fill(92,222,254);
 quad(728,0, 710,98, 800,98, 800,0);
 //mar
 fill(49,87,193);
 quad(710,98, 800,98, 800,380, 684,230);
 //asiento
  strokeWeight(3);
  fill(0,0,0);
 line(590,80,594,60);
 triangle(570,56,620,70,610,20);
//rueda delantera
fill(23,112,202);
//rueda trasera
 strokeWeight(3);
quad(590,140, 578,295, 670,279, 680,155);
strokeWeight(3);
quad(464,179, 420,280, 500, 360, 548, 230);
fill(0,0,0);
ellipse(480,270,10,10);
  //manubrio
line(444, 7, 485, 60);
line(520, 6, 485, 60);
line(485,60, 480,270);
fill(0,0,0);
quad(420,10, 444,8, 440,0, 428,0);
quad(520,6, 544,10, 544,0, 520,0);
//cuadro
line(485,94,590,80);
line(485,94, 575,220);
line(575,220,590,80);
line(590,80,640,216);
line(590,80,599,142);
//disco
fill(0,0,0);
quad(555,180, 550,250, 590,260, 600,200);
quad(625,190,630,230,655,220, 650,190);
//cadena
noFill();
ellipse(609,215,90,40);
strokeWeight(6);
line(575,220,640,216);
fill(255,255,255);
}
