import 'Cachorro.dart';
import 'Gato.dart';
import 'ListaGenerica.dart';
import 'Ovelha.dart';
import 'Passaro.dart';
import 'Sonoro.dart';
import 'Vaca.dart';

void main() {
  var animais = ListaGenerica<Sonoro>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  print('Animais cadastrados');
  animais.imprimirItens();

  print('\nSons dos Animais');
  for (var animal in animais.obtenerItens()) {
    animal.emitirSom();
  }
}