class Dispositivo {
  String _marca;
  String _modelo;
  Dispositivo(this._marca,this._modelo);
  void ligar(){
    print("Dispositivo $_marca-$_modelo :  ligado");
  }
}