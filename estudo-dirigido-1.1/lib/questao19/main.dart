
class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho){
    if (nome.isEmpty) throw ArgumentError("O nome do cômodo não pode ser vazio.");
    if (tamanho <= 0) throw ArgumentError("O tamanho do cômodo deve ser maior que 0 m²."); 
  }
}

class Casa {
  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3){
    if (this._proprietario.isEmpty) throw ArgumentError("O nome do proprietário não pode ser vazio.");
  }
  void exibirCasa() {
    print("Proprietário: $_proprietario");
    print("${_comodo1.nome} (${_comodo1.tamanho}m²).");
    print("${_comodo2.nome} (${_comodo2.tamanho}m²).");
    print("${_comodo3.nome} (${_comodo3.tamanho}m²).");
  }
  double calcularAreaTotal() {
    return _comodo1.tamanho + _comodo2.tamanho + _comodo3.tamanho;
  } 

}

void main() {
  Comodo comodo1 = Comodo("Sala", 20.5);
  Comodo comodo2 = Comodo("Quarto", 15.0);
  Comodo comodo3 = Comodo("Cozinha", 10.0);

  Casa casa = Casa("João", comodo1, comodo2, comodo3);
  casa.exibirCasa();
  print("Área total (${casa.calcularAreaTotal()}m²).");
} 