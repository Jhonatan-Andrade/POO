import 'Pedido.dart';
import 'Processavel.dart';

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(super.codigo, super.valorTotal, this.enderecoEntrega, this.taxaEntrega);

  @override
  double valorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() => print("Pedido $codigo (Delivery) - Total com taxa: R\$ ${valorFinal().toStringAsFixed(2)}");

  @override
  String toString() => "Código: $codigo  Tipo: Delivery  Valor Original: R\$ $valorTotal  Endereço: $enderecoEntrega Valor Final: R\$ ${valorFinal()}";
}