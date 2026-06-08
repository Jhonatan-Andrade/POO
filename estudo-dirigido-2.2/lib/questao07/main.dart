import 'Animal.dart';
import 'Cachorro.dart';
import 'Gato.dart';
import 'Passaro.dart';
import 'Vaca.dart';
import 'ListaGenerica.dart';

void main() {
  Animal cachorro = Cachorro("Rex");
  Animal gato = Gato("Whiskers");
  Animal passaro = Passaro("Zazu");
  Animal vaca = Vaca("Mimosa");
  
  ListaGenerica<Animal> animais = ListaGenerica<Animal>();
  
  animais.adicionar(cachorro);
  animais.adicionar(gato);
  animais.adicionar(passaro);
  animais.adicionar(vaca);

  print("Sons dos Animais");
  for (var animal in animais.itens) {
    animal.emitirSom();
  }
}
