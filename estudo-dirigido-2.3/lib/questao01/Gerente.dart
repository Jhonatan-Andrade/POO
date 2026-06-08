import 'Funcionario.dart';
import 'Bonificavel.dart';

class Gerente extends Funcionario implements Bonificavel {
  String setor;

  Gerente(String nome, double salario, this.setor)
      : super(nome, salario);

  @override
  double calcularBonus() {
    return salario * 0.15;
  }

  @override
  String toString() {
    return 'Gerente  nome: $nome  salário: R\$ ${salario.toStringAsFixed(2)}  setor: $setor';
  }
}