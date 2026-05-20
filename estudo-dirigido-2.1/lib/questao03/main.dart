import 'veiculo.dart';
import 'carro.dart';
void main() {
    Veiculo veiculo = Veiculo("nissan","GT-R34",2026);
    veiculo.exibirFicha();
    print('_'*40);
    Carro carro = Carro("nissan","GT-R34",2026,2);
    carro.exibirFicha();
}
  