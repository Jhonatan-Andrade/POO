import 'Bonificavel.dart';
import 'FuncionarioComum.dart';
import 'Gerente.dart';
import 'ListaGenerica.dart';
void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();

  funcionarios.adicionar(FuncionarioComum('Ana', 2500));
  funcionarios.adicionar(FuncionarioComum('Bruno', 3200));
  funcionarios.adicionar(Gerente('Carla', 7000, 'Financeiro'));
  funcionarios.adicionar(FuncionarioComum('Diego', 2800));
  funcionarios.adicionar(Gerente('Elisa', 8500, 'Tecnologia'));

  funcionarios.imprimirItens();

  for (var funcionario in funcionarios.obterItens()) {
    print('Bônus: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}');
  }
}