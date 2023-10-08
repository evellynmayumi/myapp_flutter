import 'package:myapp/classes/Pessoa.dart';
import 'package:myapp/classes/PessoaFisica.dart';
import 'package:myapp/classes/PessoaJuridica.dart';

void main(List<String> arguments) {
  var p1 = Pessoa("Danilo", "Rua 1");
  // p1.setNome("Débora");
  // p1.setEndereco("Rua 1");
  print(p1);

  var pessoaFisica1 = PessoaFisica("Débora", "Rua 2", "222222222");
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Empresa 1", "Rua 3", "23636525414");
  print(pessoaJuridica1);
}
