import 'Animal.dart';
import 'Sonoro.dart';

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Meee!');
  @override String toString() => 'Ovelha: $nome';
}