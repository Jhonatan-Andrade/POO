import 'personagem.dart';
class Combatente extends Personagem {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca) : super(nome, vida, nivel);


  void atacar(Personagem alvo) {
    if (!estaVivo) {
      print("$nome está derrotado e não pode atacar!");
      return;
    }
    print("$nome ataca ${alvo.nome} com força $forca!");

    alvo.receberDano(forca);

    if (!alvo.estaVivo) {
      print("${alvo.nome} foi nocauteado!");
    }
  }
}
