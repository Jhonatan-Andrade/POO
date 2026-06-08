import 'Personagem.dart';
import 'Combatente.dart';
class Guerreiro extends Combatente {
  int armadura;
  Guerreiro(super.nome, super.vida, super.nivel, super.forca, this.armadura);

  @override
  void atacar(Personagem alvo) => alvo.receberDano(forca);

  void ataquePesado(Personagem alvo) => alvo.receberDano(forca * 2);

  @override
  void exibirStatus() => print("Guerreiro $nome  Vida: $vida  Nível: $nivel  Força: $forca  Armadura: $armadura");
}