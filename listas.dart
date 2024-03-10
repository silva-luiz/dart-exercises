void main() {
  List<String> familia = ['Luiz', 'Karla', 'Theo', 'Alice'];

  List<dynamic> me = [
    27,
    1.81,
    true,
    'Luiz Henrique'
  ]; // <dynamic> para indicar que a lista recebe diversos tipos de objeto

  print(familia[1]); // Pega o segundo elemento da lista -> Karla
  print(me[3]);
}
