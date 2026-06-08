import 'Animal.dart';
import 'Sonoro.dart';

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Piu Piu!');
  @override String toString() => 'Pássaro: $nome';
}