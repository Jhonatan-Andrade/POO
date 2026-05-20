import 'contaBancaria.dart';
import 'rentavel.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = super.saldo * 0.05;
    super.saldo = super.saldo + rendimento;
  }

  @override
  String toString() {
    return 'Conta Corrente -> ${super.toString()}';
  }
}
