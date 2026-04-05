
class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) { throw ArgumentError('A potência do motor deve ser maior que 0. Valor recebido: $potencia');}
    if (tipo.isEmpty){throw ArgumentError('O tipo de motor não pode ser vazio.');} 
  }
  void exibirMotor() {
    print('  Potência do Motor: ${potencia} HP');
    print('  Tipo de Motor: ${tipo}');
  }
}

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.isEmpty) throw  ArgumentError('O modelo do carro não pode ser vazio.');
  }

  void exibirCarro() {
    print('-'*40);
    print('Modelo do Carro: $_modelo');
    print('Detalhes do Motor:');
    _motor.exibirMotor();
  }
}

void main() {
    Motor motorEsportivo = Motor(250, 'Gasolina Premium');
    Motor motorEletrico = Motor(180, 'Elétrico');

    Carro carroEsportivo = Carro('Sport GT', motorEsportivo);
    Carro carroUrbano = Carro('Eco EV', motorEletrico);

    carroEsportivo.exibirCarro();
    carroUrbano.exibirCarro();

    print('-'*40);
}
