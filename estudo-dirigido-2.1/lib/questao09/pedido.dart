class Pedido {
  int _codigo;
  double _valorTotal;
  Pedido(this._codigo,this._valorTotal);
  
  double get valorTotal => _valorTotal;
  set valorTotal(double valor) => _valorTotal = valor;
  
  void exibirPedido(){
    print("Numero do pedido :$_codigo  Valor: R\$ $_valorTotal");
  }
}