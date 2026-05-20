import 'calculavel.dart';
import 'ingresso.dart';

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(
    String evento,
    double valor,
    this.taxaServico,
    this.localizacao,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Ingresso Camarote \nEvento: $evento \n'
        'Localização: $localizacao \n '
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} \n'
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}\n';
  }
}