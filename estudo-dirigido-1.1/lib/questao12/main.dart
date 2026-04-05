
class Circulo {
  static const double PI = 3.14159;
  double _raio;
  String _cor;

  Circulo(this._raio, this._cor){
    if (_raio < 0) throw ArgumentError('O raio não pode ser negativo.');
    if (_cor.isEmpty) throw ArgumentError('A cor não pode ser vazia.');
  }

  double calcularArea(){return PI * (_raio * _raio);} //(A = pi * r^2)

  double calcularPerimetro(){return 2 * PI * _raio;} //(C = 2 * pi * r)

  void exibirResumo(){
    print('Resumo do Círculo');
    print('Raio: ${_raio.toStringAsFixed(2)}');
    print('Cor: $_cor');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}/n');
  }
}

void main() {
  Circulo circulo1 = Circulo(5.0, 'Vermelho');
  Circulo circulo2 = Circulo(10.0, 'Azul');
  Circulo circulo3 = Circulo(2.5, 'Verde');

  circulo1.exibirResumo();
  circulo2.exibirResumo();
  circulo3.exibirResumo();
}
