import 'exibivel.dart';
import 'produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel{
  String _dataValidade;

  ProdutoPerecivel(String nome, double preco, this._dataValidade) : super(nome, preco);

  @override
  void exibir() {
    print('nome: ${super.nome}');
    print('preço: R\$ ${super.preco}');
    print('validade: ${this._dataValidade}');
  }
}
