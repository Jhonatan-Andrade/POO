import 'Exibivel.dart';
import 'Produto.dart';


class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses)
      : super(nome, preco);

  @override
  void exibir() {
    print(this);
  }

  @override
  String toString() {
    return 'Produto Eletrônico  nome: $nome preço: R\$ ${preco.toStringAsFixed(2)}  garantia: $garantiaMeses meses';
  }
}