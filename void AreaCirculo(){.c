import 'dart:io'

void AreaCirculo(){
    double pi = 3.1415;
}


String LeerConsola (String msje){
    stdout.write(msje);
    var readconsole= stdin.readLineSync();
    return readconsole;
}

void main (){
    var radio = LeerConsola("Cual es el radio: ")
    print (radio.toString());

}