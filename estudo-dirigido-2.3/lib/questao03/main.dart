import 'Caminhao.dart';
import 'Carro.dart';
import 'Moto.dart';
import 'Fichavel.dart';
import 'ListaGenerica.dart';

void main() {
  ListaGenerica<Fichavel> listaVeiculos = ListaGenerica();


  listaVeiculos.adicionar(Carro("Toyota", "Corolla", 2022, 4));
  listaVeiculos.adicionar(Carro("Honda", "Civic", 2021, 4));
  listaVeiculos.adicionar(Moto("Yamaha", "Fazer", 2023, 250));
  listaVeiculos.adicionar(Moto("Honda", "Biz", 2020, 125));
  listaVeiculos.adicionar(Caminhao("Volvo", "VM", 2019, 12.0));

  print("Lista de Veículos (toString)");
  listaVeiculos.imprimirItens();

  print("\nFichas Técnicas (exibirFicha)");
  for (var veiculo in listaVeiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}