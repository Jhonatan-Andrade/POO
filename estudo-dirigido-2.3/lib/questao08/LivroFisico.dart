import 'Livro.dart';
import 'Informativo.dart';

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Físico: $titulo autor: $autor ($quantidadePaginas págs)');
  }

  @override
  String toString() {
    return 'Livro Físico título: $titulo autor: $autor páginas: $quantidadePaginas';
  }
}