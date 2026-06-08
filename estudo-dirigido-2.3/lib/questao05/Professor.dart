import 'Apresentavel.dart';
import 'Pessoa.dart';

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario) : super(nome, idade);

  @override
  void exibirDados() {
    print('Professor: $nome  disciplina: $disciplina');
  }

  @override
  String toString() {
    return 'Professor $nome idade: $idade disciplina: $disciplina salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}
