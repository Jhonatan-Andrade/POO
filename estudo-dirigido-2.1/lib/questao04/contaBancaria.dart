class ContaBancaria {
  String _titular;
  double _saldo = 0;
  ContaBancaria(this._titular);
  
  double get saldo => _saldo;
  
  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print("Erro: O saldo não pode ser negativo.");
    }
  }
  void depositar(double valor){
    this._saldo = _saldo + valor;
  }
  void sacar(double valor){
    if(_saldo < valor){
      print("O valor do saque e menor que o que tem na conta");
    }else{
      this._saldo = _saldo - valor;
    }
  }
  void exibirSaldo(){
    print("$_titular seu saldo da conta  é de R\$ $_saldo ");
  }
  
}