import 'produto.dart';
class  ProdutoPerecivel extends Produto {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade):super(nome,preco);
  
  @override
  void exibirDados() {
   super.exibirDados();
   print('Validade: $dataValidade');
  }
}