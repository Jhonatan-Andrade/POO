import 'contaBancaria.dart';
import 'contaPoupanca.dart';
import 'contaCorrente.dart';

void main() {
  ContaBancaria contaBancaria = ContaBancaria("Jhonatan-1");
  ContaPoupanca contaPoupanca = ContaPoupanca("Jhonatan-2");
  ContaCorrente contaCorrente = ContaCorrente("Jhonatan-3");
  void exibir(){
    contaBancaria.exibirSaldo();
    contaPoupanca.exibirSaldo();
    contaCorrente.exibirSaldo();
    print("-"*45);
  }
  exibir();
  contaBancaria.depositar(5.5);
  contaPoupanca.depositar(7.5);
  contaCorrente.depositar(2.3);
  exibir();
  contaPoupanca.aplicarRendimento();
  contaCorrente.aplicarRendimento();
  exibir();
}
