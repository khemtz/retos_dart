import "dart:io";


void main() {
    stdout.write("Cuantos numeros quieres imprimir: ");
    var respuesta = stdin.readLineSync();
    int total = int.parse(respuesta.toString());

    for (int col = 0; col < total; col++) {
        for (int ren = 0; ren < total; ren++) {


        stdout.write("*");

         }
         stdout.write("\n");
    }
}