import 'rentavel.dart';
import 'contaBancaria.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  final double taxa = 0.05;

  ContaCorrente(String titular, double saldoInicial) : super(titular, saldoInicial);

  @override
  void aplicarRendimento() {
    double rendimento = super.saldo * taxa;
    super.saldo += rendimento;
    print('Rendimento de 5% aplicado na Conta Corrente: ${super.titular}.');
  }
}
