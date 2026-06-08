import 'Animal.dart';
import 'Sonoro.dart';

class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Muuu!');
  @override String toString() => 'Vaca: $nome';
}