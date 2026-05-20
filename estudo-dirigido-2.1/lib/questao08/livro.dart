class Livro {
  String _titulo;
  String _autor;
  Livro(this._titulo,this._autor);
  
  
  void exibirInformacoes(){
    print("$_titulo ( $_autor )");
  }
}