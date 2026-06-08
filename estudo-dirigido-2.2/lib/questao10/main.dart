import 'Ligavel.dart';
import 'Smartphone.dart';
import 'Notebook.dart';

void main() {
  Ligavel smartphone = Smartphone("Apple", "iPhone 15", "iOS");
  Ligavel notebook = Notebook("Dell", "XPS 13", 16);

  smartphone.ligar();
  smartphone.desligar();

  print("-"*40);

  notebook.ligar();
  notebook.desligar();
}
