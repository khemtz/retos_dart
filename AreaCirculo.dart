import 'dart:io';

void AreaCirculo(int r){
    double pi = 3.1415;
    var area = pi *(r * r);
    print ("el area es: "+ area.toString());
}


int LeerConsola (String msje){
    stdout.write(msje);
    var readconsole = stdin.readLineSync();
    int read = int.parse(readconsole.toString());
    return read;
}

void main (){
  print("Menu");
  print("1. Circulo");
  print("2. Rectangulo");
  print("3. Triangulo");
  int respuesta = LeerConsolaint("Elige una opción: ");
  
    if (respuesta == 1){
      int radio = LeerConsolaint("Cual es el radio: ");
    AreaCirculo(radio);
    } else if (respuesta == 2){
      print ("Calculo rectangulo");
    } else if (respuesta == 2){
      print ("Calculo rectangulo");
    }


    
} 