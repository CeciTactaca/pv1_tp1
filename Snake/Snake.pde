Cabeza cabeza;

void setup() {
  size(600,600);
  cabeza = new Cabeza(width/2, height/2);
}

void draw() {
  background(0);
  cabeza.mostrar();
  cabeza.mover();
}

void keyPressed(){
}
