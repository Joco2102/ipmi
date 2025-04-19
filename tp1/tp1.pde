PImage miobjeto;
void setup(){
  size(800,400);
  background(#C1C1C1);
  miobjeto = loadImage("joystick.png");
  }
void draw(){

    //control//
   fill(30);
   stroke(30);
   image(miobjeto,0,0,400,400);
   ellipse(500,270,100,200);
   ellipse(730,270,100,200);
   ellipse(614,235,200,110);
   rect(515,235,200,65);
   quad(498,164,546,161,565,203,499,234);
   quad(682,162,727,168,722,228,663,204);
   ellipse(561,275,65,65);
   ellipse(663,276,65,65);
   strokeWeight ( 5 );
   line(509,159,542,157);
   line(687,159,719,162);
   
   //botones y analogicos//
    noStroke();
    fill(50);
    ellipse(563,273,43,43);
    ellipse(659,273,43,43);
    ellipse(517,221,60,60);
    fill(#B8B8B9);
    ellipse(610,225,55,55);
    fill(30);
    ellipse(610,225,48,48);
    fill(255);
    ellipse(610,236,25,25);
    fill(50);
    ellipse(610,210,12,12);
    ellipse(575,195,12,12);
    ellipse(650,195,12,12);
    ellipse(705,200,23,23);
    ellipse(681,223,23,23);
    ellipse(729,220,23,23);
    ellipse(705,244,23,23);
    fill(30);
    triangle(508,198,517,214,527,198);
    triangle(538,209,538,229,521,221);
    triangle(495,209,511,220,495,230);
    triangle(506,241,516,224,525,241);
    
    //textos//
    fill(30);
    textSize(30);
    text("N",601,246);
    textSize(10);
    fill(255);
    text("start",638,210);
    text("select",560,210);
    fill(#0EE842);
    textSize(20);
    text("1",700,206);
    fill(#FCB8F1);
    text("4",676,230);
    fill(#F77F52);
    text("2",724,227);
    fill(#97A8FA);
    text("3",700,251);
    
    //cable//
    fill(0);
    quad(607,185,608,150,623,150,626,185);
    stroke(0);
    noFill();
    strokeWeight(10);
    ellipse(530, 80, 90, 35);
    ellipse(560, 85, 75, 31); 
    ellipse(590, 75, 80, 37);  
    ellipse(550, 70, 70, 30);   
    ellipse(580, 90, 85, 40); 
    ellipse(590, 90, 85, 40);  
    ellipse(610, 80, 80, 35); 
    strokeWeight(10);
    stroke(50);
    line(573,54,573,110);
    strokeWeight(10);
    noFill();
    arc(615, 105, 80, 90, -1, HALF_PI);
 
 //linea que divide la pantalla//
    stroke( 0 );
    strokeWeight( 10 );
    line( 400, 0, 400, 400 );
  
  //imprimo para ver las coordenadas//
   println( mouseX + " / " + mouseY );
     }
     
     
     
     
    
   
