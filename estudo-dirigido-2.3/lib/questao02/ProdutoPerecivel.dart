import 'Exibivel.dart';
import 'Produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    print(this);
  }

  @override
  String toString() {
    return 'Produto Perecível  nome: $nome  preço: R\$ ${preco.toStringAsFixed(2)}  validade: $dataValidade';
  }
}
