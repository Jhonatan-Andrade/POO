import 'IngressoVip.dart';
import 'IngressoPromocional.dart';


void main() {

  IngressoVip vip = IngressoVip("Show de Rock", 200.0, 50.0);
  IngressoPromocional promo = IngressoPromocional("Cinema", 40.0, 15.0);


  print("Evento: ${vip.evento}");
  print("Valor Final VIP: R\$ ${vip.valorFinal()}");

  print("\nEvento: ${promo.evento}");
  print("Valor Final Promocional: R\$ ${promo.valorFinal()}");
}
