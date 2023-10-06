
import 'dart:io';

import 'package:myapp/functions/utils.dart' as utils;

void main(List<String> arguments) {
  print("Bem vindo(a) a nossa calculadora!");
  var numero1 = utils.lerConsoleDouble("Informe a primeiro número:");

  var numero2 = utils.lerConsoleDouble("Informe o segundo número:");

  var operacao =utils.lerConsole("Informe a operação matemática (+, -, *, /):");

  calcular(operacao, numero1, numero2);
}

// double lerConsoleDouble(String texto) {
//   var line = lerConsole(texto);
//   return double.parse(lerConsole(texto));
// }



void calcular(String operacao, double numero1, double numero2) {
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = utils.divisao(numero1, numero2);
      break;
    case "-":
      resultado = utils.divisao(numero1, numero2);
      break;
    case "*":
      resultado = utils.divisao(numero1, numero2);
      break;
    case "/":
      resultado = utils.divisao(numero1, numero2);
      break;
    default:
      print("Operação inválida");
      exit(0);
  }
  print("Operação solicitada: $operacao");
  print("O resultado da operação é: $resultado");
}