class Cabeza extends GameObject{
  PVector direccion;
  int velocidad;
  int alto;
  int ancho;
  
  Cabeza(float x, float y){
    super(x,y);
    alto = 40;
    ancho= 35;
    direccion = new PVector(0,1);
    velocidad = 5;
  }
  
  void mostrar(){
    fill(#08C94A);
    ellipse(posicion.x, posicion.y, ancho, alto);
  }
  
  void mover(){
   posicion.x += direccion.x * velocidad;
   posicion.y += direccion.y * velocidad;
   
  if (posicion.y < alto/2 || posicion.y + alto/2 > height) {
    direccion.y *= -1;
    posicion.y = constrain(posicion.y, 0, height - alto);
  }
  

  }
  
  void setDireccion(float dx, float dy){
    direccion.set(dx,dy);
  }
}
