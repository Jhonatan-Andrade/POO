import 'Personagem.dart';

abstract class Inimigo extends Personagem {
  double recompensa;
  Inimigo(super.nome, super.vida, super.nivel, this.recompensa);
  void exibirRecompensa() => print("Recompensa de $nome: $recompensa moedas.");
}