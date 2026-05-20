class Ingresso {
  String _evento;
  double _valor;
  Ingresso(this._evento,this._valor);
  
  double get valor => _valor;
  
  set valor(double val) {
    if (val >= 0) {
      _valor = val;
    } else {
      print("Erro: O valor não pode ser negativo.");
    }
  }
  
  void exibirResumo(){
    print("nome do evento:$_evento  valor:$_valor");
  }
}
