import 'dart:io';

void AreaCirculo(int r) {
  double pi = 3.1416;
  var area = pi * (r * r);
  print("el area es:" + area.toString());
}

void AreaTriangulo(int b, int a) {
  var area = (b * a) / 2;
  print("el area es:" + area.toString());
}

void AreaRectangulo(int b, int a) {
  var area = b * a;
  print("el area es:" + area.toString());
}

void AreaCuadrado(int l) {
  var area = l * l;
  print("el area es:" + area.toString());
}

int LeerConsolaint(String msje) {
  stdout.write(msje);
  var readconsole = stdin.readLineSync();
  int read = int.parse(readconsole.toString());
  return read;
}

void imprimeMenu() {
  print("\n\n******* MENU ********");
  print("1.- Circulo");
  print("2.- Rectangulo");
  print("3.- Triangulo");
  print("4.- Cuadrado");
  print("0.- Salir");
}

void main() {
  var respuesta = 9;
  imprimeMenu();
  while (respuesta != 0) {
    respuesta = LeerConsolaint("Elige una opcion:");

    if (respuesta == 1) {
      int radio = LeerConsolaint("cual es el radio:");
      AreaCirculo(radio);
    } else if (respuesta == 2) {
      //print("calculo rectangulo");
      int base = LeerConsolaint("cual es la base:");
      int altura = LeerConsolaint("cual es la altura:");
      AreaRectangulo(base, altura);
    } else if (respuesta == 3) {
      //print("calculo triangulo");
      int base = LeerConsolaint("cual es la base:");
      int altura = LeerConsolaint("cual es la altura:");
      AreaTriangulo(base, altura);
    } else if (respuesta == 4) {
      int lado = LeerConsolaint("cual es el lado:");
      AreaCuadrado(lado);
    }
    //print(radio.toString());
  }
}
