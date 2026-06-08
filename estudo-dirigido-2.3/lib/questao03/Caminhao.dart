import 'Fichavel.dart';
import 'Veiculo.dart';


class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(super.marca, super.modelo, super.ano, this.capacidadeCarga);

  @override
  void exibirFicha() => print("Ficha Caminhão: $marca $modelo, $ano, Carga: $capacidadeCarga toneladas.");

  @override
  String toString() => "Tipo: caminhão  $marca $modelo, ano: $ano, carga: $capacidadeCarga toneladas";
}