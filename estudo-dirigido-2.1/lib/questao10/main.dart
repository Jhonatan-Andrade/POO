import 'dispositivo.dart';
import 'smartphone .dart';

void main() {
  Dispositivo pedido = Dispositivo("Apple","IPhone");
  Smartphone smartphone = Smartphone("Apple","IPhone","IOS");
  
  pedido.ligar();
  print('_'*40);
  smartphone.ligar();

}