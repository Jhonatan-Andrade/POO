class Produto {
  String _nome;
  double _preco;

  Produto(this._nome,this._preco){
    if (_nome.isEmpty) throw ArgumentError('O nome do produto não pode ser vazio.');
    if (_preco < 0) throw ArgumentError('O preço do produto não pode ser negativo.');
  }

  String exibirProdutoDetalhes() {
    return '  Nome: $_nome, \n  Preço unitário: R\$${_preco.toStringAsFixed(2)}';
  }
}

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero,this._produto,this._quantidade){
    if (_numero <= 0) throw ArgumentError('O número do pedido deve ser positivo.');
    if (_quantidade <= 0) throw ArgumentError('A quantidade deve ser positiva.');
  }

  double calcularTotal() {
    double res = _produto._preco * _quantidade;
    return res;
  }

  void exibirPedido() {
    double total = calcularTotal();
    print('-'*40);
    print('Detalhes do Pedido');
    print('Número do Pedido: $_numero');
    print('Produto:');
    print('${_produto.exibirProdutoDetalhes()}');
    print('Quantidade: $_quantidade');
    print('Total do Pedido: R\$${total.toStringAsFixed(2)}\n');

  }
}

void main() {
  Produto smartphone = Produto('Smartphone', 1299.99);
  Produto foneDeOuvido = Produto('Fone de Ouvido Bluetooth',199.50);

  Pedido pedido1 = Pedido(20260401,smartphone,1,);
  Pedido pedido2 = Pedido(20260402,foneDeOuvido,2,);

  pedido1.exibirPedido();
  pedido2.exibirPedido();
  
  print('-'*40);
}
