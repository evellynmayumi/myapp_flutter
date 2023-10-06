import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print("Número informado incorreto, alterando para 0");
    return 0.0;
  } else {
    return numero;
  }
}

double somaLista(List<double> numeros) {
  double acumulator = 0;
  for (var numero in numeros) {
    acumulator = soma(acumulator, numero);
  }
  return acumulator;
}

double soma(double numero1, double numero2) {
  return numero1 + numero2;
}

double subracao(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplicacao(double numero1, double numero2) {
  return numero1 * numero2;
}

double divisao(double numero1, double numero2) {
  return numero1 / numero2;
}
