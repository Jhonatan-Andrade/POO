class Veiculo {
  String _marca;
  String _modelo;
  int _ano;
  Veiculo(this._marca,this._modelo,this._ano);
  
  void exibirFicha(){
     print('Marca: $_marca Modelo: $_modelo Ano: R\$ $_ano');
  }
}