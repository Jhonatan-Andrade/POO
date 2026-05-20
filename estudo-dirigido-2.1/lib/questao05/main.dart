import 'aluno.dart';
import 'pessoa.dart';

void main() {
  Pessoa pessoa = Pessoa("Jhonatan-1",25);
  Aluno aluno = Aluno("Jhonatan-2",25,"ADS",123);
  
  pessoa.exibirDados();
  print("-"*20);
  aluno.exibirDados();

}
