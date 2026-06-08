
import 'Pedido.dart';

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print("PEDIDO RETIRADA");
    print("Código: $codigo");
    print("Cliente: $nomeCliente");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("-"*40+"\n");
  }
}
