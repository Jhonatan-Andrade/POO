class Animal {
  String _nome;
  String _som;
  Animal(this._nome,this._som);
  
  String get som => _som;
  set som(String valor) => _som = valor;
  
  void emitirSom(){
    print("$_nome : $_som");
  }
}