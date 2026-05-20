import 'rentavel.dart';
import 'contaBancaria.dart';

class ContaPoupanca extends ContaBancaria implements Rentavel {
  final double taxa = 0.01; 

  ContaPoupanca(String titular, double saldoInicial) : super(titular, saldoInicial);

  @override
  void aplicarRendimento() {
    double rendimento = super.saldo * taxa;
    super.saldo += rendimento;
    print('Rendimento de 1% aplicado na Poupança: ${super.titular}.');
  }
}
