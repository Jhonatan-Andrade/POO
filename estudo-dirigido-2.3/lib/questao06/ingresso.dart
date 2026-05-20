class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  @override
  String toString() {
    return '\nEvento: $evento \n Valor: R\$ ${valor.toStringAsFixed(2)}\n';
  }
}


