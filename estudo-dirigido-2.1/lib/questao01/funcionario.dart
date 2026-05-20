class Funcionario {
  String _nome;
  double _salario;
  Funcionario(this._nome,this._salario);
  
  void exibirDados(){
     print('Nome: $_nome  Salário: R\$ $_salario');
  }
}