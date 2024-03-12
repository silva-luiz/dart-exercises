import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.onibus);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 150;
  print(viagemMaio.consultarTotalLocaisVisitados);
}
