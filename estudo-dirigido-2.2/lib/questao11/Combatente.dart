import 'Personagem.dart';
import 'Atacavel.dart';
abstract class Combatente extends Personagem implements Atacavel {
  int forca;
  Combatente(super.nome, super.vida, super.nivel, this.forca);
}