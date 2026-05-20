import 'pedido.dart';

class PedidoDelivery extends Pedido {
  String _enderecoEntrega;
  double _taxaEntrega;
 
  PedidoDelivery(int codigo, double valorTotal,this._enderecoEntrega,this._taxaEntrega) : super(codigo,valorTotal);
  
  void calcularValorFinal(){
    double taxa = (super.valorTotal / 100)*_taxaEntrega;
    super.valorTotal = super.valorTotal + taxa;
  }
  
  @override
  void exibirPedido() {
   super.exibirPedido();
   print('Endereço: $_enderecoEntrega');
  }
}