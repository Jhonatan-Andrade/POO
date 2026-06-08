import 'Animal.dart';

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: muuu");
  }
}