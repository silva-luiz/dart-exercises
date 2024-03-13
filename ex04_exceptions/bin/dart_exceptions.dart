//import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

// void testingNullSafety() {
//   Account? myAccount; // nao foi inicializado, portanto e' nulo

//   // simulando comunicacao externa
//   Random rng = Random();
//   int randomNumber = rng.nextInt(10);
//   if (randomNumber <= 5) {
//     myAccount = Account(name: "Luiz", balance: 1000, isAuthenticated: true);
//   }

//   //>>>Maneiras de se manter o null safety<<<
//   // Teste forcado - nao funciona
//   // print(myAccount.balance);

//   // Conversao direta - ma' pratica
//   // print(myAccount!.balance);

//   // if-else
//   if (myAccount != null) {
//     print(myAccount.balance);
//   } else {
//     print("Null account");
//   }

//   // if ternario
//   print(myAccount != null ? myAccount.balance : "Null account");

//   // safe call
//   print(myAccount?.balance);

//}

void main() {
  // testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Luiz",
      account:
          Account(name: "Luiz Silva", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Karla",
      account:
          Account(name: "Karla Oliveira", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Luiz", idReceiver: "Karla", amount: 100);

    // Observando resultado
    if (result = true) {
      print("Transacao concluida com sucesso!");
      print(result);
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente nao e' valido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do destinatario nao e' valido.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuario de ID '${e.idSender}' nao esta' autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuario de ID '${e.idSender}' nao conseguiu enviar a quantia de R\$ ${e.amount}, pois seu saldo e de R\$ ${e.senderBalance}");
  } on Exception {
    print("Algo deu errado. Contate o suporte para mais informacoes");
  }
}
