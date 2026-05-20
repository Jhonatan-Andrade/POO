import 'dispositivo.dart';
class Smartphone extends Dispositivo {
  String _sistemaOperacional;
  Smartphone(String marca,String modelo,this._sistemaOperacional) : super(marca,modelo);
  
  @override
  void ligar() {
   super.ligar();
   print('Sistema Operacional : $_sistemaOperacional');
  }
}