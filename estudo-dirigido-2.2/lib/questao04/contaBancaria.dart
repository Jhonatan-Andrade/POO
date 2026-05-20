
abstract class ContaBancaria {
  String _titular;
  double _saldo; 

  ContaBancaria(this._titular, this._saldo);

  String get titular => _titular;
  double get saldo => _saldo;
  set saldo(double valor) => _saldo = valor;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo =_saldo + valor;
      print('depósito de R\$ $valor realizado para $_titular.');
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo = _saldo - valor;
      print('saque de R\$ $valor realizado por $_titular.');
    } else {
      print('saldo insuficiente.');
    }
  }

  void exibirSaldo() {
    print('saldo atual de $_titular: R\$ ${_saldo}');
  }
}