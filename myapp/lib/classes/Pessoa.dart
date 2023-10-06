class Pessoa {
  String _nome = "";
  String _endereco = "";

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome.toUpperCase();
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  Pessoa(String nome, String endereco) {
    _nome = nome;
    _endereco = endereco;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Endereço": _endereco}.toString();
  }
}
