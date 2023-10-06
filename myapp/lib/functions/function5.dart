void main(List<String> arguments) {
  printData("Meu texto");
  printData(soma(1, 2).toString());
}

// void printData(String texto) {
//   print(texto);
// }

//nem sempre precisa de void e int mas quanto mais informação passada melhor
// void printData(String texto) => print(texto);

// int soma(int number1, int number2) => number1 + number2;
printData(String texto) {
  print(texto);
}

soma(int number1, int number2) {
  return number1 + number2;
}