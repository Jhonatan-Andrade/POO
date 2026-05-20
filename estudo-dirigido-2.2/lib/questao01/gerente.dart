
import 'funcionario.dart';

class Gerente extends Funcionario {
  String _setor;
  
  Gerente(String nome, double salario, this._setor) : super(nome, salario);

  @override
  void exibirDados() {
    print("nome: ${super.nome}");
    print("setor: ${this._setor}");
    print("salário: R\$ ${super.salario}");
  }
}