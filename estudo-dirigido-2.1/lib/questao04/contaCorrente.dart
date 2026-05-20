import 'contaBancaria.dart';

class ContaCorrente extends ContaBancaria{
  double taxaRendimento = 5;
  ContaCorrente(String titular) : super(titular);
  
  void aplicarRendimento(){
    double rendimento = super.saldo * (taxaRendimento / 100);
    super.saldo = super.saldo + rendimento;
  }
}