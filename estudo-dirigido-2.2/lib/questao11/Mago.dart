import 'Personagem.dart';
import 'Combatente.dart';
import 'Magico.dart';
class Mago extends Combatente implements Magico {
  int mana;
  Mago(super.nome, super.vida, super.nivel, super.forca, this.mana);

  @override
  void atacar(Personagem alvo) => alvo.receberDano(forca);

  @override
  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      mana -= 10;
      alvo.receberDano(forca + 15);
    } else {
      print("$nome não tem mana suficiente!");
    }
  }

  @override
  void exibirStatus() => print("Mago $nome  Vida: $vida  Nível: $nivel  Força: $forca  Mana: $mana");
}