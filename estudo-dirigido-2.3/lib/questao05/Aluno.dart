import 'Apresentavel.dart';
import 'Pessoa.dart';

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno: $nome,idade: $idade curso: $curso');
  }

  @override
  String toString() {
    return 'Aluno: $nome idade: $idade matrícula: $matricula curso: $curso';
  }
}