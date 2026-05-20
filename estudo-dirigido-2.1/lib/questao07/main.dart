import 'animal.dart';
import 'cao.dart';
import 'gato.dart';
import 'passaro.dart';

void main() {
  Animal animal = Animal("Atum","........");
  Cao cao = Cao("Labrador Retriever");
  Gato gato = Gato("british shorthair");
  Passaro passaro = Passaro("Arara azul");
  
  animal.emitirSom();
  cao.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
}
