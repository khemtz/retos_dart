import "dart:io";

void main() {
  stdout.write("de cuantos niveles seria el triangulo: ");
  var respuesta = stdin.readLineSync();
  int total = int.parse(respuesta.toString());

  for (int ren = 0; ren < total; ren++) {
    for (int col = (total - ren); col > 0; col--) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
  print("---------------------------------");
  for (int ren = 0; ren < total; ren++) {
    for (int col = 0; col < (total - ren); col++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}