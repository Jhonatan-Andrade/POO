import 'LivroDigital.dart';
import 'LivroFisico.dart';


void main() {
  LivroDigital ebook = LivroDigital("Entendendo Algoritmos", "Aditya Bhargava", 5.5);
  LivroFisico impresso = LivroFisico("O Programador Pragmático", "Andrew Hunt", 352);

  ebook.exibirInformacoes();
  print("");
  impresso.exibirInformacoes();
}
