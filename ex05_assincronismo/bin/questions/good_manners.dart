class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String shacoBot = 'SHACOBOT: \n';

  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('ola') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('Obrigado') ||
        question.contains('boa tarde') ||
        question.contains('Boa tarde') ||
        question.contains('boa noite') ||
        question.contains('Boa noite') ||
        question.contains('de nada') ||
        question.contains('De nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('ola') ||
        question.contains('Ola')) {
      print(shacoBot + " Olaa Invocador Huhuhuhu");
    } else if (question.contains('boa tarde') ||
        question.contains('Boa tarde')) {
      print(shacoBot + "Otima tarde, meu Pratinha predileto!");
    } else if (question.contains('boa noite') ||
        question.contains('Boa noite')) {
      print(shacoBot + "Uuhuhuh!! Boa noite, amigo!");
    } else if (question.contains('Obrigado') || question.contains('obrigado')) {
      print(shacoBot + "De nada! E' sempre um prazer ajudar um PRATA hehehe!!");
    }
  }
}
