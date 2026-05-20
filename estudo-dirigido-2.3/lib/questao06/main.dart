import 'IngressoVip.dart';
import 'calculavel.dart';
import 'ingressoCamarote.dart';
import 'ingressoPromocional.dart';
import 'listaGenerica.dart';

void main() {
  Calculavel ingresso1 = IngressoVip("Show Rock",200.00,80.00);
  Calculavel ingresso2 = IngressoPromocional("Teatro Infantil",100.00,20.00);
  Calculavel ingresso3 = IngressoCamarote("Festival Jazz",300.00,50.00,"Setor A");
  Calculavel ingresso4 = IngressoPromocional("Cinema Especial",60.00,15.00);
  Calculavel ingresso5 = IngressoVip("Show Pop",180.00,70.00);


  ListaGenerica<Calculavel> lista = ListaGenerica<Calculavel>();

  lista.adicionar(ingresso1);
  lista.adicionar(ingresso2);
  lista.adicionar(ingresso3);
  lista.adicionar(ingresso4);
  lista.adicionar(ingresso5);

  print("Lista de ingresso");
  lista.imprimirItens();
  print("\n");
  print("Valores finais");

  for (var ingresso in lista.itens) {
    print(
      'Valor Final: R\$ ${ingresso.valorFinal()}',
    );
  }
}