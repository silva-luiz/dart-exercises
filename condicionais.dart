void main() {
  int idade = 15;
  bool maiorDeIdade;

  if (idade >= 18) {
    maiorDeIdade = true;
    print(idade);
    print(maiorDeIdade);
  } else {
    maiorDeIdade = false;
    print(idade);
    print(maiorDeIdade);
  }

  for (int i = 1; i <= 10; i++) {
    print("numeros de voltas: $i");
  }

  int energy = 100;

  while (energy > 0) {
    print("Keep running!! Energia = $energy");
    energy = energy - 6;
  }
}
