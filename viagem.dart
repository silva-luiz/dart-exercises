import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "TVL123346";
  double dinheiro = 0;
  Transporte locomocao; // importa o arquivo Transporte
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {}; // usar dynamic no valor

  // criando variavel privada
  int _totalLocaisVisitados = 25; // _ para private

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporteEnum(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("Viajando de carro");
        break;
      case Transporte.bike:
        print("Viajando de bike");
        break;
      case Transporte.moto:
        print("Viajando de moto");
        break;
      case Transporte.onibus:
        print("Viajando de onibus");
        break;
      case Transporte.trem:
        print("Viajando de trem");
        break;
      default:
        print("No jet!");
        break;
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }


  // pegando a variavel privada e colocando no metodo
  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }
}
