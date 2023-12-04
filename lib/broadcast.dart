void broadcastStreamOperation() {
  var stream = createNumberStream(5);
  var bStream = stream.asBroadcastStream();
  if (bStream.isBroadcast) {
    print("Broadcast Stream");
  } else {
    print("Single Stream");
  }
  bStream.first.then((value) => print("First event:$value"));
  bStream.last.then((value) => print("Last event:$value"));
  bStream.length.then((value) => print("Length of Stream:$value"));
  bStream.isEmpty.then((value) => print("Is Empty: $value"));
  stream = createNumberStream(0); //empty stream
  bStream = stream.asBroadcastStream();
  bStream.isEmpty.then((value) => print("Is Empty: $value"));
}

Stream<int> createNumberStream(int last) async* {
  for (int i = 1; i <= last; i++) {
    yield i; //to be able to send space out events
  }
}
