import 'Pedido.dart';

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    double valorFinal = valorTotal + taxaEntrega;
    print("PEDIDO DELIVERY");
    print("Código: ${codigo}");
    print("Endereço: ${enderecoEntrega}");
    print("Valor Total: R\$ ${valorTotal}");
    print("Taxa de Entrega: R\$ ${taxaEntrega}");
    print("VALOR FINAL: R\$ ${valorFinal}");
    print("-"*40+"\n");
  }
}