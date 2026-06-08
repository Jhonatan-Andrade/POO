import 'ListaGenerica.dart';
import 'Ligavel.dart';
import 'Notebook.dart';
import 'Smartphone.dart';
import 'Televisao.dart';

void main() {
  ListaGenerica<Ligavel> listaDispositivos = ListaGenerica();

  listaDispositivos.adicionar(Smartphone("Samsung", "Galaxy S24", "Android"));
  listaDispositivos.adicionar(Smartphone("Apple", "iPhone 15", "iOS"));
  listaDispositivos.adicionar(Notebook("Dell", "Inspiron", 16));
  listaDispositivos.adicionar(Notebook("Lenovo", "ThinkPad", 32));
  listaDispositivos.adicionar(Televisao("LG", "OLED55", 55));

  print("Lista de Dispositivos");
  listaDispositivos.imprimirItens();

  print("\nOperações de Energia");
  for (var dispositivo in listaDispositivos.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();
    print("-" * 30);
  }
}