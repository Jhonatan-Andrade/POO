import 'Pedido.dart';
import 'Processavel.dart';

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(super.codigo, super.valorTotal, this.taxaUrgencia);

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() => print("Pedido $codigo (Express) - Total com urgência: R\$ ${valorFinal().toStringAsFixed(2)}");

  @override
  String toString() => "Código: $codigo  Tipo: Express  Valor original: R\$ $valorTotal  Taxa urgência: R\$ $taxaUrgencia | Valor Final: R\$ ${valorFinal()}";
}