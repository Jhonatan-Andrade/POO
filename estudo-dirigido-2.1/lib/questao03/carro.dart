import 'veiculo.dart';

class Carro extends Veiculo {
  int _quantidadePortas;
  Carro(String marca,String modelo,int ano,this._quantidadePortas) : super(marca,modelo,ano);
  
  @override
  void exibirFicha() {
   super.exibirFicha();
   print('$_quantidadePortas Portas');
  }
}