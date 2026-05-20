import 'veiculo.dart';
class Moto extends Veiculo {
  int _cilindradas;

  Moto(String marca, String modelo, int ano, this._cilindradas) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('marca: ${super.marca} modelo: ${super.modelo} ano: ${super.ano}');
    print('cilindradas: ${_cilindradas}cc');
  }
}