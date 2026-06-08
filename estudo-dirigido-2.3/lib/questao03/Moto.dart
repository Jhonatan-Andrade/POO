import 'Fichavel.dart';
import 'Veiculo.dart';

class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(super.marca, super.modelo, super.ano, this.cilindradas);

  @override
  void exibirFicha() => print("Ficha Moto: $marca $modelo, $ano, $cilindradas cc.");

  @override
  String toString() => "Tipo: moto  $marca $modelo, ano: $ano, cilindradas: $cilindradas";
}
