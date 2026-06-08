import 'Apresentavel.dart';
import 'Pessoa.dart';

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia) : super(nome, idade);

  @override
  void exibirDados() {
    print('Coordenador: $nome  area: $area - $tempoExperiencia anos exp.');
  }

  @override
  String toString() {
    return 'Coordenador  $nome idade: $idade area: $area experiência: $tempoExperiencia anos';
  }
}