import 'dart:io';

import 'package:myapp/exception/nome_invalido_exception.dart';
import 'package:myapp/models/Aluno.dart';
import 'package:myapp/models/console_utils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");

//métodos estáticos n precisam ser instanciados pra acessar
  String nome = ConsoleUtils.lerStringComtexto("Digite o nome do aluno:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
  }

  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComtextoComSaida(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print("As notas digitadass foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.retornaMedia()}");

  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} foi aprovado");
  } else {
    print("O aluno ${aluno.getNome()} foi reprovado");
  }
}
