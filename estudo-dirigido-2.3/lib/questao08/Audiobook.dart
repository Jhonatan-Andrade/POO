import 'Livro.dart';
import 'Informativo.dart';


class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Audiobook: $titulo autor: $autor ($duracaoMinutos min)');
  }

  @override
  String toString() {
    return 'Audiobook título: $titulo autor: $autor duração: $duracaoMinutos min';
  }
}