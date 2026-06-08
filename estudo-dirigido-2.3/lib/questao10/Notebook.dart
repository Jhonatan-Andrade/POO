import 'Dispositivo.dart';
import 'Ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;
  Notebook(super.marca, super.modelo, this.memoriaRam);

  @override
  void ligar() => print("Ligando o notebook $marca $modelo ($memoriaRam GB RAM)...");

  @override
  void desligar() => print("Desligando o notebook $marca $modelo...");

  @override
  String toString() => "Tipo: Notebook  $marca $modelo  RAM: $memoriaRam GB";
}