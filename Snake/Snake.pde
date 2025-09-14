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

void keyPressed() {
  switch (keyCode) {
    case UP:
      cabeza.setDireccion(0, -1);
      break;
    case DOWN:
      cabeza.setDireccion(0, 1);
      break;
    case LEFT:
      cabeza.setDireccion(-1, 0);
      break;
    case RIGHT:
      cabeza.setDireccion(1, 0);
      break;
  }
}
