/* comisión 2
Joaquin Natanael Montiel 
legajo: 122802/5
*/

// Imagenes
PImage imagen1,imagen2,imagen3,imagen4;
PFont font;
//textos:

String txt1 = " Bienvenidos a esta presentación de \n PERSONA 3 RELOAD";
String txt2 = "La historia gira en torno a \nun estudiante de secundaria \nque vuelve a vivir a la \nciudad de su niñez,diez años \ndespués de un accidente \nautomovilístico en el que \nmurieron sus padres.";
String txt3 = "Al llegar a su nuevo dormitorio, \nalgo raro pasa: el tiempo \nse detiene, las personas\n desaparecen y todo se tiñe de verde. \nEstá entrando,sin saberlo, a \nLA HORA OSCURA.";
String txt4 = "Un RPG por turnos que habla sobre \nla muerte y la vida ,de aceptar \nel paso del tiempo,del amor y la pérdida,\n de los vínculos y el sacrificio,\n Y, sobre todo, de encontrar\n significado incluso cuando\n el final es inevitable.";
int e;
int velY;
int velX;


void setup() {
  size(640, 480);
  textSize(20);
  textAlign(CENTER,CENTER);
  noStroke();
   e = 1;
   velY = 0;
   velX = 0; 
  //IMAGENES
  imagen1= loadImage("Persona 3 imagen 1.jpg");
  imagen2= loadImage("Persona 3 imagen 2.jpg");
  imagen3= loadImage("Persona 3 imagen 3.jpg");
  imagen4= loadImage("Persona 3 imagen 4.jpg");
  font= loadFont("BerlinSansFBDemi-Bold-48.vlw");
  frameRate(60);
  textFont(font);
}
void draw() {
  //PANTALLA 1
  if ( e == 1 ) {
    velY += 2;
    image(imagen1,0,0,width,height);
    fill(#FFAD15);
    textSize(30);
    text(txt1,width/2,height-velY);
    if( frameCount == (60*5) ){
      e = 2;
    }
    //PANTALLA 2
  } else if ( e == 2 ) {
    velX +=2;
    image(imagen2,0,0,width,height);
    fill(255);
    textSize(30);
    text(txt2,width-velX/2,height/2);
    if( frameCount == (60*12) ){
      e = 3; 
    }
  //PANTALLA 3
  } else if ( e == 3 ) {
     velX -= 1;
     image(imagen3,0,0,width,height);
     
     textSize(30);
     text(txt3,width-velX/2,height/2);
    

    if( frameCount == (60*17) ){
      e = 4;
  }
   } else if ( e == 4 ) {
       velY -=1;
       image(imagen4,0,0,width,height);
       fill(255);
       textSize(30);
       text(txt4,width/2,height-velY/2);
       fill(#FFAD15);
       circle(550,400,90);
       fill(255);
       circle(550,400,80);
       textSize(20);
       fill(#FFAD15);
       text("reiniciar",550,400);
  }
  }
  void mousePressed(){
    float d1 = dist(mouseX,mouseY,550,400);
    int radio= 80/2;
    if(d1 < radio){
      frameCount = 0;
      e=1;
      velX=0;
      velY=0;
      }
   }
