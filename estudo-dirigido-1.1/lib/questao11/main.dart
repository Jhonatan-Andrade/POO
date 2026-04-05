import 'dart:math';


class Triangulo {
  double _lado1 = 0;
  double _lado2 = 0;
  double _lado3 = 0;
  String _caractere = "";

  Triangulo(this._lado1,this._lado2,this._lado3,this._caractere){
    if (_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) throw ArgumentError('Os lados do triângulo devem ser maiores que 0.');
    if (_caractere.isEmpty) throw ArgumentError('O caractere de desenho não pode ser vazio.');
  }

  double calcularPerimetro() {
    // O perimetro é a soma dos lados do triangulo
    double res = _lado1 + _lado2 + _lado3;
    return res;
  }

  double calcularArea() {
    // Formula de heron
    // O semiperimetro é metade do perimetro
    double p = calcularPerimetro() / 2; 

    // A área é calculada usando a formula de Heron: A = sqrt(p * (p - lado1) * (p - lado2) * (p - lado3))
    double area = p * (p - _lado1) * (p - _lado2) * (p - _lado3);
    // A função max é usada para evitar valores negativos devido a erros de arredondamento
    return sqrt(max(0, area)); 
  }

  int _getDrawingHeight() {
    
    double base = max(_lado1, max(_lado2, _lado3));
    double area = calcularArea();
    int height = ((2 * area) / base).round();
    return height;
  }

  void desenharEsquerda() {
    int height = _getDrawingHeight();
    print('\nTriângulo Esquerda (altura baseada em lados):');
    for (int i = 1; i <= height; i++) {
      print(_caractere * i);
    }
  }


  void desenharCentralizado() {
    int height = _getDrawingHeight();
    print('\nTriângulo Centralizado (altura baseada em lados):');
    for (int i = 1; i <= height; i++) {
      int spaces = height - i;
      print(' ' * spaces + _caractere * (2 * i - 1)); 
    }
  }

  void exibirResumo() {
    print('Lado 1: ${_lado1.toStringAsFixed(2)}');
    print('Lado 2: ${_lado2.toStringAsFixed(2)}');
    print('Lado 3: ${_lado3.toStringAsFixed(2)}');
    print('Caractere de Desenho: $_caractere');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('---------------------------\n');
  }
}

void main() {

  Triangulo? triangulo1;
  print('Criando Triângulo 1 (3, 4, 5) com caractere "*"');
  triangulo1 = Triangulo(3.0, 4.0, 5.0,'*');
  triangulo1.exibirResumo();
  triangulo1.desenharEsquerda();
  triangulo1.desenharCentralizado();

  print('\nAlterando lado 1 do Triângulo 1 para 6.0 ');
  triangulo1._lado1 = 6.0; 
  triangulo1.exibirResumo();
  triangulo1.desenharEsquerda();
  triangulo1.desenharCentralizado();

  print('\n---------------------------');
  
  Triangulo? triangulo2;
  print('Criando Triângulo 2 (7, 7, 7) com caractere "#"');
  triangulo2 = Triangulo( 7.0, 7.0, 7.0,'#');
  triangulo2.exibirResumo();
  triangulo2.desenharEsquerda();
  triangulo2.desenharCentralizado();  

  print('\nDimensões do Triângulo 2 após tentativa inválida:');
  triangulo2.exibirResumo();
  triangulo2.desenharEsquerda();
  triangulo2.desenharCentralizado();

  print('\n---------------------------');

}
