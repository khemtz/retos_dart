import 'dart:io';

void AreaCirculo(int r) {
  double pi = 3.1416;
  var area = pi * (r * r);
  print("el area es:" + area.toString());
}

void AreaRectangulo(int b, int a) {
  var area = b * a;
  print("el area es:" + area.toString());
}

int LeerConsolaint(String msje) {
  stdout.write(msje);
  var readconsole = stdin.readLineSync();
  int read = int.parse(readconsole.toString());
  return read;
}

void main() {
  var respuesta = 9;

  while (respuesta != 0) {
    print("\n\n******* MENU ********");
    print("1.- Circulo");
    print("2.- Rectangulo");
    print("3.- Triangulo");
    print("4.- Cuadrado");
    print("0.- Salir");
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
      print("calculo triangulo");
    }
  }
  //print(radio.toString());
}
