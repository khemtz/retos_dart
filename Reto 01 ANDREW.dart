import 'dart:io';

void AreaCirculo(int r) {
  double pi = 3.1416;
  var area = pi * (r * r);
  print("El área es:" + area.toString());
}

void AreaRectangulo(int b, int a) {
  var area = b * a;
  print("El área es:" + area.toString());
}

void AreaTriangulo(int ba, int h) {
  var area = (ba * h) / 2;
  print("El área es:" + area.toString());
}

void AreaCuadrado(int l) {
  var area = (l * l) / 2;
  print("El área es:" + area.toString());
}

int LeerConsolaint(String msje) {
  stdout.write(msje);
  var readconsole = stdin.readLineSync();
  int read = int.parse(readconsole.toString());
  return read;
}

void Menu() {
  print("\n\n******* MENU ********");
  print("1.- Círculo");
  print("2.- Rectángulo");
  print("3.- Triángulo");
  print("4.- Cuadrado");
  print("0.- Salir");
}

void main() {
  var respuesta = 9;

  while (respuesta != 0) {
    Menu();
    respuesta = LeerConsolaint("Elige una opción");

    switch (respuesta) {
      case 1:
        {
          int radio = LeerConsolaint("¿Cuál es el radio? ");
          AreaCirculo(radio);
        }
        break;
      case 2:
        {
          int base = LeerConsolaint("¿Cuál es la base? ");
          int altura = LeerConsolaint("¿Cuál es la altura? ");
          AreaRectangulo(base, altura);
        }
        break;
      case 3:
        {
          int base = LeerConsolaint("¿Cuál es el lado? ");
          int altura = LeerConsolaint("¿Cuál es la altura? ");
          AreaTriangulo(base, altura);
        }
        break;
      case 4:
        {
          int lado = LeerConsolaint("¿Cuál es el lado? ");
          AreaCuadrado(lado);
        }
        break;
      default:
        {
          print("Fin");
        }
        break;
    }
  }
}