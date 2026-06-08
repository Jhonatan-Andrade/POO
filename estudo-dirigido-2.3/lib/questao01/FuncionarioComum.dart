import 'Funcionario.dart';
import 'Bonificavel.dart';

class FuncionarioComum extends Funcionario implements Bonificavel {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  double calcularBonus() {
    return salario * 0.05;
  }

  @override
  String toString() {
    return 'Funcionário Comum  nome: $nome  salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}