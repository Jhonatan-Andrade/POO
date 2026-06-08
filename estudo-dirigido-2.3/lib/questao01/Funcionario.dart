abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  @override
  String toString() {
    return 'Nome: $nome salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}


