import 'ingresso.dart';

class IngressoVip extends Ingresso {
  double _valorAdicional = 50;
  
  IngressoVip(String evento,double valor) : super(evento,valor){
    super.valor =  super.valor + this._valorAdicional;
  }
}