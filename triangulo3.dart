import "dart:io";

void main() {
  stdout.write("de cuantos niveles seria el triangulo: ");
  var respuesta = stdin.readLineSync();
  int total = int.parse(respuesta.toString());

  //print("---------------------------------");
  for (int ren = 1; ren <= total; ren++) {
    for (int col = 0; col < total; col++) {
      if (col < (total - ren)) {
        stdout.write("-");
      } else {
        stdout.write("*");
      }
    }
    stdout.write("\n");
  }
}