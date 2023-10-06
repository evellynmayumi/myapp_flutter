void main(List<String> arguments) {
  print(executar(10, incrementar)); // Passando 'incrementar' como referência
  print(executar(10, decrementar)); // Passando 'decrementar' como referência
}

int executar(int numero, int Function(int) func) {
  return func(numero);
}

int incrementar(int numero) {
  return numero + 1;
}

int decrementar(int numero) {
  return numero - 1;
}