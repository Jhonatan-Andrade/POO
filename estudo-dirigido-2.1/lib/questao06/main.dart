import 'ingresso.dart';
import 'ingressoVip.dart';

void main() {
  Ingresso ingresso = Ingresso("cinema na quarta",250);
  IngressoVip ingressoVip = IngressoVip("cinema na quarta",250);
  
  ingresso.exibirResumo();
  print("-"*20);
  ingressoVip.exibirResumo();

}
