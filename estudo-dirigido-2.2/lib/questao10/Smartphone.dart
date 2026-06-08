import 'Dispositivo.dart';
import 'Ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional): super(marca, modelo);

  @override
  void ligar() {
    print("O smartphone $marca $modelo ($sistemaOperacional) está ligando... Iniciando serviços mobile.");
  }

  @override
  void desligar() {
    print("O smartphone $marca $modelo está desligando... Encerrando aplicativos.");
  }
}
