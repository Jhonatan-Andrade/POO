import 'Dispositivo.dart';
import 'Ligavel.dart';

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;
  Televisao(super.marca, super.modelo, this.tamanhoPolegadas);

  @override
  void ligar() => print("Ligando a TV $marca $modelo ($tamanhoPolegadas polegadas)...");

  @override
  void desligar() => print("Desligando a TV $marca $modelo...");

  @override
  String toString() => "Tipo: Televisão $marca $modelo Tamanho: $tamanhoPolegadas polegadas";
}