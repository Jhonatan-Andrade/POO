import 'carro.dart';
import 'moto.dart';

void main() {
  var meuCarro = Carro('Nissa', 'GT-R R34', 2002, 2);
  var minhaMoto = Moto('Honda', 'CB 500F', 2023, 500);

  meuCarro.exibirFicha();
  minhaMoto.exibirFicha();
}