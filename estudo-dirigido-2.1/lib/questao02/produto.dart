class Produto {
  String _nome;
  double _preco;
  Produto(this._nome,this._preco);
  
  void exibirDados(){
     print('Nome: $_nome  Preço: R\$ $_preco');
  }
}