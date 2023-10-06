import 'package:myapp/functions/utils.dart' as utils;

void main(List<String> arguments) {
  var line = utils.lerConsole("Digite um número ou 'S' para sair");
  double acumulador = 0;
  List<double> numeros = [];
  while (line != "S") {
    numeros.add(double.parse(line ?? ""));
    line = utils.lerConsole("Digite um número ou 'S' para sair");
  }
  print(utils.somaLista(numeros));
}
