import 'funcionario.dart';
class FuncionarioComum extends Funcionario {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  void exibirDados() {
    print("nome: ${super.nome}");
    print("salário: R\$ ${super.salario}");
  }
}