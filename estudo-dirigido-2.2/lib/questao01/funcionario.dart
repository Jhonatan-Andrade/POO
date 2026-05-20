abstract class Funcionario {
  String _nome;
  double _salario;

  Funcionario(this._nome, this._salario);

  get nome => _nome;
  get salario => _salario;
  
  void exibirDados();
}
