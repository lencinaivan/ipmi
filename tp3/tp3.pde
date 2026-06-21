//https://www.youtube.com/watch?v=Lmg5zkrYpwA

   
   //<<<<< variables globales<<<<<<<<<<<<
  PImage imagen;

  // Variable para el movimiento del mouse
    boolean cambiarGiro = false;


   // Variable para contar los clicks y alternar los modos con numeros enteros e impares
    int contadorClicks = 0;


     // Variables de color para las barras
      float rojo = 0;
       float verde = 0;
     float azul = 0;


     void setup() {
 
      size(800, 400);
 
       imagen = loadImage("obra.png");
 }


       void draw() {
          
      background(255);
  
   
    // Imagen del lado izquierdo
    
        if (imagen != null) {
        
          image(imagen, 0, 0, 400, 400);
  }
  
  
  // Dibuja la imagen original 
  
  push();
  
 
      // mueve el punto de origen 
  
    translate(400, 0); 
  
  
 //<<<<<< Pregunta si el mouse cambia 
 
 
    if (mouseX > 400) {
     
      cambiarGiro = true;
  }
  
       else {
       cambiarGiro = false;
  }
  
  
  // <<<<<<<<<<<  ciclo FOR >>>>>>
  
  //bucle ppara crear un grilla de 10 columnas
  
       for (int i = 0; i < 10; i++) {
    
    for (int j = 0; j < 10; j++) {
      
      
   //posicion de columna 
      
        float x = i * 40;
        
      float y = j * 40;
      
      
    ///  suma de 20 X e Y 
    
       float centroX = x + 20;
       
    float centroY = y + 20;
      
      
  // funcion con retorno para medir la distancia 
     
       float d = calcularDistancia(centroX, centroY);
       println(d); 
      
      

     // Si la columna (i) y la fila (j) están entre la 3 y la 6 es el centro
         
         boolean esElCentro = (i >= 3 && i <= 6 && j >= 3 && j <= 6);
      
      
      // si el centro arranca siendo vertical y es en el borde pasa a horizontal
        
          boolean elegirVertical = esElCentro;
      
      
     //si el mouse se mueve( se activa) y pasa a horizontal
        
      if (cambiarGiro == true) {
        
           elegirVertical = !elegirVertical; 
      }
      
      
         // dibuja el mOdulo pasando su posicion, orientacion y datos de la grilla
          
             dibujarModulo(x, y, elegirVertical, i, j);
      
           }
  }
  
  pop();
  
}



     /// z<<<<<<<<<<<<< FUNCIONES sin retorno<<<<<<<<<<<<<<<


    // Dibuja un modulo de 40x40

     void dibujarModulo(float posX, float posY, boolean vertical, int columna, int fila) {
  
   push();
  
    //  traslada el origen de las coordenadas al centro
 
       translate(posX + 20, posY + 20); 
  
  
  
    if (vertical == false) {
    
      rotate(radians(90));
  }
  
  
  // Fondo del cuadrado (Blanco)
  
      fill(255);
        noStroke();
        
  rect(-20, -20, 40, 40);
  
  
  // si el numero de clicks es impar pinta negro, si es cero pinta con algun color 
 
      if (contadorClicks % 2 != 0) {
        
          fill(rojo, verde, azul); 
    
   } 
            else {
               fill(0); 
             }
  
  
    //<<< efecto optico<<   
    //variable local(encargada de desalinear las lineas)
  
        float desfase = 0;
  
         if (vertical == true) {
           
    if (fila % 2 == 0) {
      
       desfase = 8;  /// piensa si las fila son iguales 
    }
    
    
  }    else {
         if (columna % 2 == 0) {
           
          desfase = 8; // Desplazamiento exacto para columnas pares
    }
  }
  
  
   // 
   
     for (int k = 0; k < 3; k++) {
    
      // calcula la posicion de inicio de cada una de las 3 barras
      
        
        float barraX = map(k, 0, 2, -20, 10);
    
    // dibuja los rectangulos de las barras
    
        rect(barraX + desfase, -20, 6.5, 40);
    
  }
  
  pop();
  
}



      //  <<<<<<<<<<<<<FUNCIÓN PROPIAAAA<<<<<<<<<<<<
      
      
 /// mide la distancia de lineas rectas entra las cordenadas
         float calcularDistancia(float px, float py) {
  
       float resultado = dist(px, py, 200, 200);
  
          return resultado; 
   }






     void mousePressed() {
  
       // suma un click al contador 
         contadorClicks = contadorClicks + 1;
  
  
  // genera un color random 
    rojo = random(255);
     verde = random(255);
    azul = random(255);
  
}


     void keyPressed() {
  
          // Reiniciar todo con la tecla r(si queda de color)
           
      if (key == 'r' || key == 'R') {
    
       contadorClicks = 0;
       
    cambiarGiro = false;
    
     rojo = 0;
    verde = 0;
      azul  = 0;
    
  }
  
}
