import 'dart:ffi';
import "dart:io";

void main() {
  stdout.write("Cual es tu peso en Kg: ");
  var lecturaPeso = stdin.readLineSync();
  int peso = int.parse(lecturaPeso.toString());

  stdout.write("Cual es tu Altura en metros: ");
  var lecturaAltura = stdin.readLineSync();
  var altura = double.parse(lecturaAltura.toString());

  var imc = peso / (altura * altura);

  print("tu IMC es " + imc.toString());

  var indice = 10;

  if (imc > 40) {
    print("Obesidad 3");
  } else if (imc > 35) {
    print("Obesidad 2");
  } else if (imc > 30) {
    print("Obesidad 1");
  } else if (imc > 25) {
    print("sobrepeso");
  } else {
    print("OK");
  }

  print("****************************");
  if (imc > 40) {
    print("Obesidad 3");
  }

  if ((imc > 35) && (imc < 39.9)) {
    print("Obesidad 2");
  }
  /*
  while (indice > 0) {
    print("test" + indice.toString());
    indice--;
  }
  for (var indice = 10; indice > 0; indice--) {
    print("test" + indice.toString());
  }*/
}