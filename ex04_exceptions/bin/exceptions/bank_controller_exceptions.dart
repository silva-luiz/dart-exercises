class SenderIdInvalidException implements Exception {
  // Propriedades
  String report = "SenderIdInvalidException";
  String idSender;

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }

  // Construtor
  SenderIdInvalidException({required this.idSender}); // parametro nomeado
}

class ReceiverIdInvalidException implements Exception {
  String report = "ReceiverIdInvalidException";
  String idReceiver;

  @override
  String toString() {
    return "$report\nID Receiver: $idReceiver";
  }

  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  String report = "SenderNotAuthenticatedException";
  String idSender;

  @override
  String toString() {
    return "$report\n ID Sender: $idSender";
  }

  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;
  String report = "SenderBalanceLowerThanAmountException";

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});
}
