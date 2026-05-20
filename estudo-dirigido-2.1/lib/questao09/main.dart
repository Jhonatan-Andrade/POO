import 'pedido.dart';
import 'pedidoDelivery.dart';
void main() {
  Pedido pedido = Pedido(133,55.99);
  PedidoDelivery pedidoDelivery = PedidoDelivery(134,22.50,"Rua TauTau 123",20);
  
  pedido.exibirPedido();
  print('_'*40);
  pedidoDelivery.calcularValorFinal();
  pedidoDelivery.exibirPedido();

}
