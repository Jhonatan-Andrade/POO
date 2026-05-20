import 'contaBancaria.dart';
import 'rentavel.dart';

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = super.saldo * 0.01;
    super.saldo = super.saldo + rendimento;
  }
  
  @override
  String toString() {
    return 'Conta Poupança -> ${super.toString()}';
  }
}
