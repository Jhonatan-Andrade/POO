
import 'combatente.dart';
import 'personagem.dart';

class Guerreiro extends Combatente {
  int armadura;
  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  void ataquePesado(Personagem alvo) {
    if (!estaVivo) {
      print("$nome está derrotado e não pode realizar um ataque pesado!");
      return;
    }

    int danoDobrado = forca * 2;
    print("$nome usa um ATAQUE PESADO em ${alvo.nome} causando $danoDobrado de dano!");
    
    alvo.receberDano(danoDobrado);

    if (!alvo.estaVivo) {
      print("${alvo.nome} não aguentou o impacto do ataque pesado!");
    }
  }
  @override
  void status() {
    super.status();
    print("Força: $forca | Armadura: $armadura");
  }

}