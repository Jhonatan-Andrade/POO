import 'Animal.dart';
import 'Sonoro.dart';

class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Au Au!');
  @override String toString() => 'Cachorro: $nome';
}