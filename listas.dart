import 'dart:io';

void main() {
  List<String> familia = ['Luiz', 'Karla', 'Theo', 'Alice'];

  List<dynamic> me = [
    27,
    1.81,
    true,
    'Luiz Henrique'
  ]; // <dynamic> para indicar que a lista recebe diversos tipos de objeto

  List<String> sobrinhos = familia.sublist(2);
  print(sobrinhos);

  familia.forEach((membro) {
    print(membro);
  });
  print("Digite o nome que será buscado:");
  String search = stdin.readLineSync()!;

  if (familia.contains(search)) {
    print("A lista contem o nome escolhido. -> $search");
  } else {
    print("A lista nao contem o nome escolhido");
  }

  String all = familia.reduce((value, element) {
    return value + ", " + element;
  });

  print(all);

  Iterable maior = familia.where((element) =>
      element.length >= 5); // where nao retorna uma lista, retorna um Iterable
  print("Nomes com 5 letras ou mais: ${maior.toList()}"); //toList() pode ser usado caso queira converter o Iterable para List
}
