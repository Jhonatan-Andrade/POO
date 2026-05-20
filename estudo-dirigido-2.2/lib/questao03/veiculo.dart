abstract class Veiculo {
  String _marca;
  String _modelo;
  int _ano;
  
  Veiculo(this._marca, this._modelo, this._ano);

  get marca => _marca;
  get modelo => _modelo;
  get ano => _ano;
  
  void exibirFicha();
}
