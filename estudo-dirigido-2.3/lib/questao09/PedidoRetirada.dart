import 'Pedido.dart';
import 'Processavel.dart';

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(super.codigo, super.valorTotal, this.nomeCliente);

  @override
  double valorFinal() => valorTotal; 

  @override
  void exibirPedido() => print("Pedido $codigo (Retirada) - Cliente: $nomeCliente - Total: R\$ ${valorFinal().toStringAsFixed(2)}");

  @override
  String toString() => "Código: $codigo  Tipo: Retirada Valor original: R\$ $valorTotal  Cliente: $nomeCliente Valor Final: R\$ ${valorFinal()}";
}