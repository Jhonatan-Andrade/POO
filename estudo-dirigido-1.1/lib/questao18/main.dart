import 'dart:io';
class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;

  Musica(this.titulo, this.artista, this.duracaoSegundos){
    if (titulo.isEmpty) throw ArgumentError("O título da música não pode ser vazio.");
    if (artista.isEmpty) throw ArgumentError("O nome do artista não pode ser vazio.");
    if (duracaoSegundos <= 0) throw ArgumentError("A duração da música deve ser maior que 0 segundos.");
  }
}

class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;

  Playlist(this.nome, this.musica1, this.musica2, this.musica3){
    if (nome.isEmpty) throw ArgumentError("O nome da playlist não pode ser vazio.");
  }

  void exibirPlaylist() {
    print("Playlist: $nome");
    print("${musica1.titulo}(${musica1.artista})${musica1.duracaoSegundos}s.");
    print("${musica2.titulo}(${musica2.artista})${musica2.duracaoSegundos}s.");
    print("${musica3.titulo}(${musica3.artista})${musica3.duracaoSegundos}s.");
  }
  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
  }
  void tocarPlaylist() {
    print(" ");
    for (var musica in [musica1, musica2, musica3]) {
      int time = 0;
      print(" ");
      for (int i = 0; i < musica.duracaoSegundos; i++) {
        print("\x1B[A\x1B[2K${musica.titulo} (${musica.artista}) ${time}/${musica.duracaoSegundos}s  Tocando. ");
        time++;
        sleep(Duration(seconds: 1)); 
      }
      print("\x1B[A\x1B[2K${musica.titulo} (${musica.artista}) ${time}/${musica.duracaoSegundos} s.");
    }
  }
}
void main() {
  Musica musica1 = Musica("Shape of You", "Ed Sheeran", 5);
  Musica musica2 = Musica("Birds", "Imagine Dragons", 342);
  Musica musica3 = Musica("Rescue Me", "OneRepublic ", 328);

  Playlist playlist = Playlist("Top Hits", musica1, musica2, musica3);

  print("-" * 40);
  playlist.exibirPlaylist();
  print("-" * 40);
  print("\nPlaylist: ${playlist.nome} ${playlist.calcularDuracaoTotal()} s.");
  playlist.tocarPlaylist();
}
