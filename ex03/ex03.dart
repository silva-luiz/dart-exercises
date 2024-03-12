import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.onibus);
  print(viagemMaio.consultarTotalLocaisVisitados);
}
