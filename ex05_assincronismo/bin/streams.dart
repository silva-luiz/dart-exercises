import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    // [] parametro opcional
    int i = 1;
    while (i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("The Stream is finished");
  }

  var luizStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = luizStream.listen((event) {
    if (event.isEven) {
      print("$event is Even!!!");
    }
  }, onError: (e) {
    print("An error occurred: $e");
  }, onDone: () {
    print("The subscriber is gone!");
  });

  luizStream.map((event) => "Subscriber 2 is watching: $event").listen(print);


  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print("Stream paused;");

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print("Steam resumed");

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print("Stream canceled");

  print("Main is finished");
}
