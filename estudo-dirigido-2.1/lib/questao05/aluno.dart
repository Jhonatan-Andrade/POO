import 'pessoa.dart';

class Aluno extends Pessoa{
  String _curso;
  int _matricula = 1;
  Aluno(String nome,int idade,this._curso,this._matricula) : super(nome,idade);
  @override
  void exibirDados(){
    super.exibirDados();
    print('curso:$_curso matricula:$_matricula');
  }
}