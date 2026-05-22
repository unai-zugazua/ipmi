PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

PFont fuente;

int fotogramas;
int panta;
int mov;
int mov2;
int tamTEX;
int opacidad;

String TEXTO1;
String TEXTO2;
String TEXTO3;
String TEXTO4;
String TEXTO5;

void setup() {
  size(640, 480);
  img1 = loadImage ("img1.jpg");
  img2 = loadImage ("img2.jpg");
  img3 = loadImage ("img3.jpg");
  img4 = loadImage ("img4.jpg");
  img5 = loadImage ("img5.jpg");
  img6 = loadImage ("img6.jpg");
  fuente = loadFont ("LETRAS.vlw");
  textFont(fuente);
  TEXTO1="La historia sigue a una pareja bastante dispareja\n Holland March: Un detective privado con mala suerte y problemas con la bebida. \nJackson Healy: Un matón a sueldo especializado en darle palizas a la gente para resolver problemas. Ambos se ven obligados a trabajar juntos para investigar la misteriosa desaparición de una joven llamada Amelia y la muerte de una estrella del porno en un accidente automovilístico. Lo que empieza como un caso sencillo termina destapando una conspiración criminal masiva que involucra a la industria automotriz y a los niveles más altos del gobierno local.";
  fotogramas = 0;
  TEXTO2="Ryan Gosling: El que resultó ser un genio de la comedia. Pasó de galán en The Notebook y tipo duro en Drive a brillar con humor absurdo en Barbie.\nRussell Crowe: El peso pesado de Hollywood. Un actor de carácter, famoso por ser el tipo rudo y serio en clásicos como Gladiator y Una mente brillante. \nAngourie Rice: La revelación joven. En la peli es la hija de Gosling y el cerebro del equipo; después la viste como Betty Brant en la última trilogía de Spider-Man.";
  TEXTO3="Sane Black: Es el guionista que inventó la fórmula moderna de pareja dispareja con Lethal Weapon (Arma Mortal). \nDirector de Culto: Dirigió Kiss Kiss Bang Bang (con RDJ), que tiene un estilo casi idéntico a The Nice Guys. También hizo Iron Man 3.";
  TEXTO4="Premios: \nCritics Choice Awards: Nominada a Mejor Comedia y Mejor Actor en una Comedia (Ryan Gosling).\nSan Diego Film Critics Society:Ryan Gosling ganó el premio a Mejor Interpretación Cómica.";
 TEXTO5="Empire Awards: Nominaciones a Mejor Comedia, Mejor Guion (Shane Black) y Mejor Actriz Revelación (Angourie Rice).\nGolden Schmoes: Ganó como Película más infravalorada del año.";
  panta = 0;
  mov = 660;
  mov2 = -120;
  tamTEX= 1;
  opacidad = 1;
}

void draw() {
  println(frameCount);
  fotogramas++;
  if (fotogramas > 0 && fotogramas < 800) {
    panta = 0;
  } else if (fotogramas >800 && fotogramas <1400) {
    panta = 1;
  } else if (fotogramas >1400 && fotogramas <1800) {
    panta = 2;
  } else if (fotogramas >1800 && fotogramas <2600) {
    panta = 3;
  } else if (fotogramas >2600){
    panta = 4;
  }

  background(#F0E6CE);
  fill(250);

  if (panta==0) {
    if (mov >360) {
      mov -= 2;
    }

    textSize(16);
    fill(0);
    text(TEXTO1, mov, 20, 270, 460);
    image (img1, 0, 0, 350, 600);
  } else if (panta==1) {
    if (tamTEX <= 18) {
      tamTEX = tamTEX + 1;
    }
    background(#AAA78D);
    image (img3, 60, 0, 520, 480);
    textSize(tamTEX);
    fill(0);
    text(TEXTO2, 80, 30, 500, 490);
  } else if (panta==2) {
    if (mov2 < 40) {
      mov2 += 3;
    }
    image(img4, 0, 0, 640, 480);
    fill(250);
    textSize (20);
    text(TEXTO3, mov2, 40, 200, 430);
  } else if (panta == 3) {
    if (mov > 40) {
      mov -= 2;
    }
    if (mov2 < 300) {
      mov2 += 2;
    }
      if (fotogramas > 1980){
        if (opacidad < 255){
        opacidad +=3;
        }
        fill(0,0,0,opacidad);
       text(TEXTO4,300, 20 , 300,200);
       text(TEXTO5,30,260, 300,200);
      }
    
    image(img5, mov, 10, 240, 200);
    image(img6, mov2, 260, 300, 200);
    fill(0);
  }
  else if(panta == 4){
     image(img2,0,0,640,480);
     fill(#83BAF0);
     noStroke();
     rect(450,20,180, 100);
     textSize(20);
          fill(0);
     text("REINICIAR", 485, 65, 130,100);
}
}
void mousePressed () {

  if (panta == 4) {
    if  (mouseX > 450 && mouseX < 630 && mouseY > 20 && mouseY < 120) {
      panta = 0;
      mov = 660;
      mov2 = -120;
      fotogramas = 0;
      tamTEX = 1;
    }
  }
}
