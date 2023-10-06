import 'package:myapp/classes/Pessoa.dart';
import 'package:myapp/classes/PessoaJuridica.dart';

class PessoaFisica extends Pessoa {
  // String _nome = "";
  // String _endereco = "";
  String _cpf = "";

  // void setNome(String nome) {
  //   _nome = nome;
  // }

  // String getNome() {
  //   return _nome.toUpperCase();
  // }

  // void setEndereco(String endereco) {
  //   _endereco = endereco;
  // }

  // String getEndereco() {
  //   return _endereco;
  // }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf):super(nome, endereco) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {"Nome": getNome(), 
    "Endereço": getEndereco(), 
    "CPF":_cpf
    }.toString();
  }
}
