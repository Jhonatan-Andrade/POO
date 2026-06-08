import 'Dispositivo.dart';
import 'Ligavel.dart';



class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo);

  @override
  void ligar() {
    print("O notebook $marca $modelo com ${memoriaRam}GB de RAM está ligando... Carregando BIOS.");
  }

  @override
  void desligar() {
    print("O notebook $marca $modelo está desligando... Salvando estado do sistema.");
  }
}