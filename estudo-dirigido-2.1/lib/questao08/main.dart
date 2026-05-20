import 'livro.dart';
import 'livroDigital.dart';
void main() {
  Livro livro = Livro("Arquitetura limpa","Robert C. Martin");
  LivroDigital livroDigital = LivroDigital("Arquitetura limpa","Robert C. Martin","6.65 MB");
  
  livro.exibirInformacoes();
  livroDigital.exibirInformacoes();

}
