class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  get saldo => _saldo;
  set saldo(double valor) => _saldo = valor;

  String toString() {
    return 'titular: $_titular  saldo: R\$ ${_saldo}';
  }
}
