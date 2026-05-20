import 'calculavel.dart';
import 'ingresso.dart';

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional): super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return 'Ingresso VIP \nEvento: $evento \n'
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} \n'
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}\n';
  }
}