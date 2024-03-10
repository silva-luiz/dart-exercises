import 'dart:io';

void main() {
  print("How old are you?");
  String? input = stdin.readLineSync();

  if (input != null) {
    int age = int.tryParse(input)!;
    print("You are $age years old.");
  }
}
