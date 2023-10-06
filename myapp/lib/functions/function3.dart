import 'package:myapp/functions/utils.dart' as utils;

void main(List<String> arguments) {
  var fatorialCalculado = fatorial(10);
  print(fatorialCalculado); //=6 = 3*2*1
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }
  return numero * fatorial(numero - 1);
}