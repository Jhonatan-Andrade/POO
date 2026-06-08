import 'Audiobook.dart';
import 'Informativo.dart';
import 'LivroDigital.dart';
import 'LivroFisico.dart';
import 'ListaGenerica.dart';


void main() {
  var biblioteca = ListaGenerica<Informativo>();

  biblioteca.adicionar(LivroFisico('Clean Code', 'Robert Martin', 425));
  biblioteca.adicionar(LivroDigital('Dart Básico', 'Mariana Souza', 12));
  biblioteca.adicionar(Audiobook('POO na Prática', 'Carlos Lima', 180));
  biblioteca.adicionar(LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));
  biblioteca.adicionar(LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  print('Livros em Catálogo');
  biblioteca.imprimirItens();

  print('\nDetalhes Informativos');
  for (var livro in biblioteca.obtenerItens()) {
    livro.exibirInformacoes();
  }
}