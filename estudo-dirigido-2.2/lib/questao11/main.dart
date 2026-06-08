import 'Personagem.dart';
import 'Guerreiro.dart';
import 'Arqueiro.dart';
import 'Mago.dart';
import 'Goblin.dart';
import 'Dragao.dart';
import 'Inimigo.dart';

void main() {
  var thoran = Guerreiro("Thoran", 100, 5, 20, 50);
  var lia = Arqueiro("Lia", 80, 4, 15, 5);
  var merlin = Mago("Merlin", 60, 6, 10, 20);
  var gob = Goblin("Gob", 50, 2, 100, 10);
  var ignis = Dragao("Ignis", 200, 10, 500, 40);


  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);


  List<Personagem> personagens = [thoran, lia, merlin, gob, ignis];
  print("\nStatus Final");
  for (var p in personagens) {
    p.exibirStatus();
    if (p is Inimigo && !p.estaVivo()) {
      p.exibirRecompensa();
    }
  }
}