import 'contaBancaria.dart';
import 'contaPoupanca.dart';
import 'contaCorrente.dart';

void main() {
  ContaPoupanca poupanca = ContaPoupanca('Jhonatan', 0);
  poupanca.depositar(500.0);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print(''); 
  
  ContaCorrente corrente = ContaCorrente('jhenifer', 0);
  corrente.depositar(1000.0);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}