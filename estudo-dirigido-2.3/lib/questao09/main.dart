import 'ListaGenerica.dart';
import 'PedidoDelivery.dart';
import 'PedidoExpress.dart';
import 'PedidoRetirada.dart';
import 'Processavel.dart';

void main() {
  ListaGenerica<Processavel> listaPedidos = ListaGenerica();

  listaPedidos.adicionar(PedidoDelivery(1001, 120.0, "Rua A, 100", 15.0));
  listaPedidos.adicionar(PedidoRetirada(1002, 80.0, "Ana"));
  listaPedidos.adicionar(PedidoExpress(1003, 200.0, 40.0));
  listaPedidos.adicionar(PedidoDelivery(1004, 150.0, "Rua B, 250", 20.0));
  listaPedidos.adicionar(PedidoRetirada(1005, 60.0, "Bruno"));

  print("Lista de Pedidos");
  listaPedidos.imprimirItens();
  print("\nProcessamento de Pedidos");
  for (var pedido in listaPedidos.obterItens()) {
    pedido.exibirPedido();
  }
}