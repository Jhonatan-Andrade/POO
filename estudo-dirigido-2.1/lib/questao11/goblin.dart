import 'inimigo.dart';

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, double recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void status() {
    super.status();
    print("Velocidade: $velocidade");
  }
  
}