class SenderIdInvalidException implements Exception {
  // Propriedades
  static const String report = "SenderIdInvalidException";
  String idSender;

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }

  // Construtor
  SenderIdInvalidException({required this.idSender}); // parametro nomeado
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;

  @override
  String toString() {
    return "$report\nID Receiver: $idReceiver";
  }

  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;

  @override
  String toString() {
    return "$report\n ID Sender: $idSender";
  }

  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;
  
  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});
}
