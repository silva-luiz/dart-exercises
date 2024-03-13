import 'dart:io';

import 'questions/time_questions.dart';

void main() async {
  String shacoBot = 'SHACOBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o SHACOBOT, aguarde hihihi...--');

  print('SHACOBOT:\n Oi HuHuhu \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(shacoBot+' Para meu proximo truque, eu vou fazer voce desaparecer HAHAHA!!');
      print('Até a proxima HAHAHAH!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      print(shacoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(shacoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);
}
