class BotClock {
  Future clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

   Stream shacoBotStream(int interval, [int? maxCount]) async* {
    // [] parametro opcional
    int i = 1;
    while (i != maxCount) {
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("Stream finalizada.");
  }
}
