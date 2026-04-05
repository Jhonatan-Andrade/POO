
class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp){
    if (nome.isEmpty) throw ArgumentError("O nome do pokémon não pode ser vazio.");
    if (tipo.isEmpty) throw ArgumentError("O tipo do pokémon não pode ser vazio.");
    if (nivel < 1 || nivel > 100) throw ArgumentError("O nível do pokémon deve estar entre 1 e 100.");
    if (hp <= 0) throw ArgumentError("O HP do pokémon deve ser maior que 0.");
  }
}
class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3){
    if (nome.isEmpty) throw ArgumentError("O nome do treinador não pode ser vazio.");
  }

  void exibirTime() {
    print("Treinador: $nome\n");
    print("${pokemon1.nome} (${pokemon1.tipo}) Nível: ${pokemon1.nivel} HP: ${pokemon1.hp}  - ${pokemon1.numero}");
    print("${pokemon2.nome} (${pokemon2.tipo}) Nível: ${pokemon2.nivel} HP: ${pokemon2.hp}  - ${pokemon2.numero}");
    print("${pokemon3.nome} (${pokemon3.tipo}) Nível: ${pokemon3.nivel} HP: ${pokemon3.hp}  - ${pokemon3.numero}");
    print(" ");
  }

  int calcularPoderTotal() {return pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;}
 
  void pokemonMaisForte() {
    Pokemon maisForte = pokemon1;
    if (pokemon2.nivel > maisForte.nivel) maisForte = pokemon2;
    if (pokemon3.nivel > maisForte.nivel) maisForte = pokemon3;
    print("Pokémon mais forte: ${maisForte.nome} (Nível: ${maisForte.nivel})");
  }
}
void main() {
  Pokemon pokemon1 = Pokemon(25, "Pikachu", "Elétrico", 50, 120);
  Pokemon pokemon2 = Pokemon(6, "Charizard", "Fogo/Voador", 80, 200);
  Pokemon pokemon3 = Pokemon(150, "Mewtwo", "Psíquico", 100, 300);

  Treinador treinador = Treinador("Jhonatan", pokemon1, pokemon2, pokemon3);

  treinador.exibirTime();
  print("Poder total do time: ${treinador.calcularPoderTotal()}");
  treinador.pokemonMaisForte();
}