import 'Inimigo.dart';
import 'Personagem.dart';
import 'Flamejante.dart';


class Dragao extends Inimigo implements Flamejante {
  int poderFogo;
  Dragao(String nome, int vida, int nivel, double recompensa, this.poderFogo) 
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) => alvo.receberDano(poderFogo);

  @override
  void exibirStatus() => print("Dragão $nome  Vida: $vida  Nível: $nivel  Poder de Fogo: $poderFogo");
}
