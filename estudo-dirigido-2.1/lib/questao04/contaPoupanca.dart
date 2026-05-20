import 'contaBancaria.dart';
class ContaPoupanca extends ContaBancaria{
  double taxaRendimento = 1;
  ContaPoupanca(String titular) : super(titular);

  void aplicarRendimento(){
    double rendimento = super.saldo * (taxaRendimento / 100);
    super.saldo = super.saldo + rendimento;
  }
}