import 'contaBancaria.dart';
import 'rentavel.dart';
class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = super.saldo * 0.08;
    super.saldo = super.saldo + rendimento;
  }

  @override
  String toString() {
    return 'Conta Investimento -> ${super.toString()}';
  }
}