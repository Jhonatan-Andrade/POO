
class Semaforo {
  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual, this._tempoRestante){
    switch (this._corAtual) {
      case "🔴":
        this._tempoRestante = 5;
        break;
      case "🟢":
        this._tempoRestante = 4;
        break;
      case "🟡":
        this._tempoRestante = 2;
        break;
      default:
        throw ArgumentError("Cor inválida. Use 🔴, 🟢 ou 🟡.");
    }
  }

  void trocarCor() {
    switch (this._corAtual) {
      case "🔴":
        this._corAtual = "🟢";
        this._tempoRestante = 4;
        break;
      case "🟢":
        this._corAtual = "🟡";
        this._tempoRestante = 2;
        break;
      case "🟡":
        this._corAtual = "🔴";
        this._tempoRestante = 5;
        break;
    }
  }
  
  void reduzirTempo() {
    if (this._tempoRestante > 0)this._tempoRestante--;
    if (this._tempoRestante == 0) trocarCor();
  }

  void exibirEstado() {
    print("${this._corAtual}: ${this._tempoRestante}");
  }
}

void main (){
  Semaforo semaforo = Semaforo("🟢", 5);
  for (int i = 0; i < 20; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }
}