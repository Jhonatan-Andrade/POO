import 'Livro.dart';
import 'Informativo.dart';

class LivroDigital extends Livro implements Informativo {
  int tamanhoArquivoMB;

  LivroDigital(String titulo, String autor, this.tamanhoArquivoMB) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Digital: $titulo autor: $autor ($tamanhoArquivoMB MB)');
  }

  @override
  String toString() {
    return 'Livro Digital título: $titulo autor: $autor tamanho: $tamanhoArquivoMB MB';
  }
}