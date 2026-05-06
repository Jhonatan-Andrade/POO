import 'personagem.dart';
import 'combatente.dart';
import 'guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'inimigo.dart';
import 'goblin.dart';
import 'dragao.dart';

void main() {
  var thoran = Guerreiro("Thoran", 120, 10, 25, 40);
  var lia = Arqueiro("Lia", 80, 8, 15, 5); 
  var merlin = Mago("Merlin", 70, 12, 10, 30); 

  var gob = Goblin("Gob", 30, 2, 50.0, 18);
  var ignis = Dragao("Ignis", 300, 50, 2000.0, 60);

  print("--- Início da Batalha ---\n");
  // O guerreiro deve atacar o goblin
  print("[TURNO 1: Guerreiro]");
  thoran.atacar(gob);
  print("");

  // O arqueiro deve atacar o goblin
  print("[TURNO 2: Arqueira]");
  lia.atacar(gob);
  print("");

  // O mago deve lançar magia no dragão~<
  print("[TURNO 3: Mago]");
  merlin.lancarMagia(ignis);
  print("");

  // O dragão deve soltar fogo no guerreiro
  print("[TURNO 4: Dragão]");
  ignis.soltarFogo(thoran);
  print("");

  //Exibição do Status Final
  
  print("--- Status Final dos Personagens ---");
  thoran.status();
  lia.status();
  merlin.status();
  gob.status();
  ignis.status();
}