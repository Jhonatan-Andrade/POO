abstract class Personagem {
  String nome;
  int _vida;
  int nivel;

  Personagem(this.nome, int vida, this.nivel) : _vida = vida < 0 ? 0 : vida {
    if (nome.isEmpty) throw Exception("Nome não pode ser vazio.");
    if (nivel < 1) throw Exception("Nível deve ser >= 1.");
  }

  int get vida => _vida;

  void receberDano(int dano) {
    _vida -= dano;
    if (_vida < 0) _vida = 0;
  }

  bool estaVivo() => _vida > 0;

  void exibirStatus();
}