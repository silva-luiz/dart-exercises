class SenderIdInvalidException implements Exception {
  // Propriedades
  String idSender;

  // Construtor
  SenderIdInvalidException({required this.idSender}); // parametro nomeado
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;

  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;

  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount});
}
