import 'combatente.dart';
import 'personagem.dart';

class Arqueiro extends Combatente {
  int _flechas;
  Arqueiro(String nome, int vida, int nivel, int forca, this._flechas) 
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo) {
      print("$nome está derrotado e não pode atacar!");
      return;
    }
    if (_flechas > 0) {
      _flechas = _flechas - 1; 
      print("$nome disparou uma flecha! Flechas restantes: $_flechas");
      super.atacar(alvo);
    } else {
      print("$nome tentou atacar, mas está sem flechas!");
    }
  }

  void recarregar(int quantidade) {
    _flechas = _flechas + quantidade;
    print("$nome recarregou $quantidade flechas | Total de flechas: $_flechas");
  }
}