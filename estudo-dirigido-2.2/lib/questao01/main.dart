import 'funcionarioComum.dart';
import 'gerente.dart';

void main() {

  var comum = FuncionarioComum("Jessica", 2200.0);
  var gerente = Gerente("Jhonatan", 8000.0, "Tecnologia");

  comum.exibirDados();
  print("");
  gerente.exibirDados();
}