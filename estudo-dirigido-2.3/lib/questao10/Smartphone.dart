import 'Dispositivo.dart';
import 'Ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;
  Smartphone(super.marca, super.modelo, this.sistemaOperacional);

  @override
  void ligar() => print("Ligando o smartphone $marca $modelo com $sistemaOperacional...");
  
  @override
  void desligar() => print("Desligando o smartphone $marca $modelo...");

  @override
  String toString() => "Tipo: Smartphone  $marca $modelo  SO: $sistemaOperacional";
}