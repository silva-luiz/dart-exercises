import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
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
        idSender: "Luiz", idReceiver: "Karla", amount: 50);

    // Observando resultado
    if (result = true) {
      print("Transacao concluida com sucesso!");
      print(result);
    }
  } on SenderIdInvalidException catch (e) {
    print("O ID '${e.idSender}' do remetente nao e' valido.");
  } on ReceiverIdInvalidException catch (e) {
    print("O ID '${e.idReceiver}' do destinatario nao e' valido.");
  } on SenderNotAuthenticatedException catch (e) {
    print("O usuario de ID '${e.idSender}' nao esta' autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(
        "O usuario  de ID '${e.idSender}' nao conseguiu enviar a quantia de R\$ ${e.amount}, pois seu saldo e de R\$ ${e.senderBalance}");
  } on Exception {
    print("Algo deu errado. Contate o suporte para mais informacoes");
  }
}
