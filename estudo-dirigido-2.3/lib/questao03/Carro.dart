import 'Fichavel.dart';
import 'Veiculo.dart';

class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(super.marca, super.modelo, super.ano, this.quantidadePortas);

  @override
  void exibirFicha() => print("Ficha Carro: $marca $modelo, $ano, $quantidadePortas portas.");

  @override
  String toString() => "Tipo: carro  $marca $modelo, ano: $ano, portas: $quantidadePortas";
}