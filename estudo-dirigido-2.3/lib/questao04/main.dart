







import 'contaBancaria.dart';
import 'contaPoupanca.dart';
import 'contaCorrente.dart';
import 'contaInvestimento.dart';
import 'listaGenerica.dart';
import 'rentavel.dart';

void main() {

  Rentavel conta1 = ContaPoupanca("Ana", 1000.00);
  Rentavel conta2 = ContaCorrente("Bruno", 1500.00);
  Rentavel conta3 = ContaInvestimento("Carla", 5000.00);
  Rentavel conta4 = ContaPoupanca("Diego", 2500.00);
  Rentavel conta5 = ContaCorrente("Elisa", 800.00);

  ListaGenerica<Rentavel> lista = ListaGenerica<Rentavel>();

  lista.adicionar(conta1);
  lista.adicionar(conta2);
  lista.adicionar(conta3);
  lista.adicionar(conta4);
  lista.adicionar(conta5);

  print("Antes do rendimento");
  lista.imprimirItens();


  for (var conta in lista.itens) {
    conta.aplicarRendimento();
  }
  print("\n");
  print("Depois do rendimento");
  lista.imprimirItens();
}