import 'funcionario.dart';
import 'gerente.dart';
void main() {
   Funcionario funcionario = Funcionario("jhonatan",2000);
  funcionario.exibirDados();
  print("-"*40);
  Gerente gerente = Gerente("jhonatan",2000,"produção");
  gerente.exibirDados();
}
  