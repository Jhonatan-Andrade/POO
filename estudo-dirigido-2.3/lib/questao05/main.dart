import 'Apresentavel.dart';
import 'Aluno.dart';
import 'Coordenador.dart';
import 'ListaGenerica.dart';
import 'Professor.dart';

void main() {
  var pessoas = ListaGenerica<Apresentavel>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));
  pessoas.adicionar(Professor('Carla', 38, 'POO', 2000.00));
  pessoas.adicionar(Professor('Diego', 41, 'Banco de Dados', 1900.00));
  pessoas.adicionar(Coordenador('Elisa', 45, 'Tecnologia', 15));

  print('Pessoas');
  pessoas.imprimirItens();

  print('\nExibindo Dados');
  for (var pessoa in pessoas.obtenerItens()) {
    pessoa.exibirDados();
  }
}