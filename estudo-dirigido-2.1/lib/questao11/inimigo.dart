import 'personagem.dart';

class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa) 
      : super(nome, vida, nivel);

  @override
  void receberDano(int quantidade) {
    super.receberDano(quantidade);
    if (!estaVivo) {
      exibirRecompensa();
    }
  } 

  void exibirRecompensa() {
    print("O inimigo $nome foi derrotado. Recompensa concedida: $recompensa moedas de ouro.");
  }

}