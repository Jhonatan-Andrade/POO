
import 'Pessoa.dart';
import 'Aluno.dart';
import 'Professor.dart';

void main() {
  var aluno = Aluno('João Silva', 20, '2026001', 'Engenharia de Software');
  var professor = Professor('Dra. Ana Costa', 45, 'Programação Orientada a Objetos', 8500.00);

  aluno.exibirDados();
  print(''); 
  professor.exibirDados();
}