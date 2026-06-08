class ListaGenerica<T> {
  final List<T> itens = [];
  void adicionar(T item) => itens.add(item);
  void imprimirItens() => itens.forEach(print);
  List<T> obterItens() => itens;
}