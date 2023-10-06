import 'package:myapp/classes/Pessoa.dart';

class PessoaJuridica extends Pessoa{
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj)
    :super(nome, endereco) {
    _cnpj = cnpj;
    }  
    
  @override
  String toString() {
    return {"Nome": getNome(), "Endereço": getEndereco(), "CNPJ":_cnpj}.toString();
  }

  }


