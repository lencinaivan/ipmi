

PFont fuente; // tipografia

//variables principales
   
int pantalla = 0;
//(cambia entre pantallas)

int tiempoPantalla = 0;
//(tiempo para hacer el cambio)

   //PANTLLA 0 

PImage menu;

   //PANTALLA 1

PImage inicio;

int xtitulo = -200;
int xsubtitulos = -400;

   //PANTALLA 2

PImage historia;
int ysubtitulos = -300;

   //PANTALLA 3

PImage infectado;

int xsubtitulo = 700;
int ysubtitulo = -100;

   //PANTALLA 4

PImage camino;

int xcamino = 700;

   //PANTALLA 5

PImage apocalipsis;


void setup(){
  
  size(640, 480);   
  
  menu = loadImage("menu.jpg");
  
  inicio = loadImage ( "inicio.jpg"); 
  
  historia = loadImage( "historia.jpg");
  
  infectado = loadImage( "infectado.jpg");
  
  camino = loadImage( "camino.jpg");
  
  apocalipsis = loadImage("apocalipsis.jpg");
  
  fuente = loadFont ("Impact-48.vlw");
  
  
  
  
}  

void draw(){
  
   textFont(fuente);
   
  // PANTALLA 0 <<<<<<<<<<<<<<
  

   if(pantalla == 0){

  image(menu, 0, 0, 640, 480);


  // boton de iniciar
  
       noFill();

     stroke (255);

  rect(220, 320, 200, 50);
  

      // texto del boton 

           fill(255);
 
        textSize(25);

      text("INICIAR", 255, 355);

   
}
  

  
         //PANTALLA 1 <<<<<<<<<<<<
  
  
    else if(pantalla == 1){
      
   image(inicio, 0, 0, 640, 480);
   
   fill(0, 10);
   
  rect(0, 0, 640, 480);


      // movimientos de los textos
  
  
    if (xtitulo < 15){
  
    xtitulo = xtitulo + 3;}


    if(xsubtitulos < 15){

  xsubtitulos = xsubtitulos + 3; 
  
  }

        // textos, tamaños, color y las cordenadas de los textos(15x)

  fill(255);

  textSize(40);
  text("THE LAST OF US", xtitulo, 64 );
 

     textSize(20);

          text("Es un juego postapocaliptico", xsubtitulos, 102);

          text("donde la humanidad fue destruida",xsubtitulos, 130);
  
          text("por una infeccion mortal.",xsubtitulos, 160);

          text("Joel y Ellie deberan sobrevivir", xsubtitulos, 190);

          text("en un mundo lleno de peligros.", xsubtitulos, 220);



          // cambio de escenas cada 5 segundos


        if(millis()- tiempoPantalla  > 5000){

      pantalla = 2;
      
      tiempoPantalla = millis();

    }

    }

              //PANTALLA 2 <<<<<<<<<<<<<<<<<<<<<<<
  
        else if(pantalla ==2){
  
  
  image(historia, 0, 0, 640, 480);

      fill(0,10);
      
         rect(0,0,640,480);


       if(ysubtitulos < 60){

      ysubtitulos = ysubtitulos + 3;

    }

     fill(255);
     
          textSize(35);
          

         text("Joel debera proteger a Ellie", 15, ysubtitulos);

     text("mientras recorren un mundo", 15, ysubtitulos + 30);

       text("destruido por la infeccion.", 15, ysubtitulos + 60);
       
       
          //cambio de pantalla cada 10 segundos
       
       
       if(millis() - tiempoPantalla > 10000){

          pantalla = 3;
          
           tiempoPantalla = millis();
       }
         
  }
    
    
    
    
           //PANTALLA 3 <<<<<<<<<<<<<<<<<<<<<<<<<
    
     else if(pantalla == 3){

    image(infectado, 0, 0, 640, 480);

     fill(0,10);

  rect(0,0,640,480);

        
        // movimiento de esquina del texto

   if(xsubtitulo > 40){

        xsubtitulo = xsubtitulo - 3;

    }

    if(ysubtitulo < 320){

       ysubtitulo = ysubtitulo + 3;

    }


    fill(255);

    textSize(20);
  
   
    
        text("Los infectados dominan las ciudades", xsubtitulo , ysubtitulo);
 
        text("y obligan a los sobrevivientes", xsubtitulo, ysubtitulo + 30);

         text("a esconderse constantemente.", xsubtitulo, ysubtitulo + 60);


                // cambio de pantalla 


                if(millis() - tiempoPantalla > 15000){

                   pantalla = 4;
               
               tiempoPantalla = millis();
}
     
  }
    
            //PANTALLA 4 <<<<<<<<<<<<<<<<
    
    
         else if(pantalla == 4){

            image(camino, 0, 0, 640, 480);
 
          fill(0,10);

             rect(0,0,640,480);


       // movimiento texto de derecha a izquierda
       

  if(xcamino > 40){

    xcamino = xcamino - 4;

  }


        // textos

          fill(255);

          textSize(20);
  

      text("Joel y Ellie recorren el pais", xcamino, 120);

      text("buscando una posible cura", xcamino, 150);

      text("mientras enfrentan nuevos peligros.", xcamino, 180);

     
        //text(mouseX + " , " + mouseY, 20, 20);(ubicar cordenas)
        
        
        // tiempo para cambiar a pantalla 5(final)
        
        if(millis() - tiempoPantalla > 10000){
          
          pantalla = 5;
          
          tiempoPantalla = millis();
        }
        
   }



           //PANTALLA 5 <<<<<<<<<<<<<<<<<<<<<<<<

        else if(pantalla == 5){
          
          image (apocalipsis, 0, 0, 640, 480);
          
          fill(0, 120);
          
          rect(0, 0, 640, 480);
          
          fill(255);
          
        textSize(35);

             text("THE LAST OF US", 50, 80);

             textSize(20);

               text("En mi opinion, es un juego muy bueno", 50, 180);

              text("por su historia, personajes y ambientacion.", 50, 210);

              text("Te recomiendo jugarlo, es un juegaso.", 50, 240);

             
               

                 //BOTON REINICIAR  

              noFill();

             stroke(255);

            rect(220, 380, 200, 50);
             

               fill(255);

              textSize(25);

             text("REINICIAR", 245, 415);

    }

}





   void mousePressed() {

                // boton iniciar
                //si la persona hacer click dentro del boton, lo detecta

  if(pantalla == 0){

     if(mouseX > 220 && mouseX < 420 &&
       mouseY > 320 && mouseY < 370){

       pantalla = 1;
      
     tiempoPantalla = millis();
     
     // vuelve a empezar la animacion de los textos
    
     xtitulo = -200;
    
      xsubtitulos = -400;

    }

  }
               //BOTON REINICIAR


          if(pantalla == 5){

            if(mouseX > 220 && mouseX < 420 &&
                mouseY > 380 && mouseY < 430){

         pantalla = 0;

                  //reinicio de animaciones

        xtitulo = -200;

          xsubtitulos = -400;

          ysubtitulos = -300;

         xsubtitulo = 700;

           ysubtitulo = -100;

          xcamino = 700;

    }

  }

   }
