import 'Pedido.dart';
import 'PedidoDelivery.dart';
import 'PedidoRetirada.dart';




void main() {
  Pedido delivery = PedidoDelivery(101, 85.50, "Rua das Flores, 123", 12.00);
  Pedido retirada = PedidoRetirada(102, 45.00, "Mariana Silva");

  delivery.exibirPedido();
  retirada.exibirPedido();
}
