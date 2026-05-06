import 'inimigo.dart';
import 'personagem.dart';

class Dragao extends Inimigo {
  int poderDeFogo;

  Dragao(String nome, int vida, int nivel, double recompensa, this.poderDeFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    if (!estaVivo) {
      print("O dragão $nome está caído e não pode expelir chamas!");
      return;
    }

    print("$nome ataca uma rajada de fogo em ${alvo.nome}!");
    print("Dano de fogo: $poderDeFogo");

    alvo.receberDano(poderDeFogo);

    if (!alvo.estaVivo) {
      print("${alvo.nome} foi reduzido a cinzas.");
    }
  }
}