import 'Combatente.dart';
import 'Personagem.dart';

class Arqueiro extends Combatente {
  int flechas;
  Arqueiro(super.nome, super.vida, super.nivel, super.forca, this.flechas);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      flechas--;
      alvo.receberDano(forca);
    } else {
      print("$nome não possui flechas!");
    }
  }

  @override
  void exibirStatus() => print("Arqueira $nome  Vida: $vida  Nível: $nivel  Força: $forca  Flechas: $flechas");
}