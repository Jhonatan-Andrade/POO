import 'livro.dart';
class LivroDigital extends Livro {
  String _tamanhoArquivo;
  LivroDigital(String titulo, String autor,this._tamanhoArquivo) : super(titulo,autor);
  
  @override
  void exibirInformacoes() {
   super.exibirInformacoes();
   print('Tamanho do arquivo:$_tamanhoArquivo');
  }
}