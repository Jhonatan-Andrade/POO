
import 'produto.dart';
import 'produtoPerecivel.dart';
void main() {
   Produto produto = Produto("feijão",11.5);
  produto.exibirDados();
  print("-"*40);
  ProdutoPerecivel perecivel = ProdutoPerecivel("iogurte",25.99,"12/05/2026");
  perecivel.exibirDados();
}