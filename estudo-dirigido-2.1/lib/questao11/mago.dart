import 'combatente.dart';
import 'personagem.dart';

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (!estaVivo) {
      print("$nome está inconsciente e não pode conjurar magias!");
      return;
    }
    if (mana >= 10) {
      mana = mana - 10; 
      int danoMagico = forca + 15;
      
      print("$nome lança uma magia em ${alvo.nome}.");
      print("Dano mágico causado: $danoMagico | Mana restante: $mana");

      alvo.receberDano(danoMagico);
    } else {
      print("$nome tentou lançar magia, mas não possui mana suficiente ($mana/10)!");
    }
  }
  @override
  void status() {
    super.status();
    print("Recurso Extra -> Mana: $mana");
  }
}