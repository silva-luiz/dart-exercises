void main() async {
  // Future myFuture = Future(() {
  //   print("Going back to the future");
  //   return 1;
  // }).then((value) => print('value is $value'));

  // Future.delayed(Duration(seconds: 5));

  // Future<int> myFutureFunc() async {
  //   print('I have a function in the future!!');
  //   await Future.delayed(Duration(seconds: 5));
  //   return 12;
  // }

  // myFutureFunc().then((value) => print('function value: $value'));

  // print('Done with main');

  print("O que e', o que e'...");
  await MusicClock().clock(2);
  print("Clara e salgada,");
  await MusicClock().clock(1);
  print("Cabe em um olho...");
  await MusicClock().clock(1);
  print("E pesa uma tonelada?");
  await MusicClock().clock(2);
  print("Tem sabor de mar,");
  await MusicClock().clock(1);
  print("Pode ser discreta,");
  await MusicClock().clock(1);
  print("Inquilina da dor,");
  await MusicClock().clock(1);
  print("morada predileta...");
  await MusicClock().clock(2);
  print("Na calada ela vem, refem da vinganca");
  await MusicClock().clock(1);
  print("Irma do desespero, rival da esperanca");
  await MusicClock().clock(2);
  print("Pode ser causada por:");
  await MusicClock().clock(1);
  print("vermes e mundanas");
  await MusicClock().clock(1);
  print("E o espinho da flor,");
  await MusicClock().clock(1);
  print("Cruel que voce ama....");
}

class MusicClock {
  Future clock(int n) {
    return Future.delayed(Duration(seconds: n));
  }
}
