void getUserName2() async {
  await for (String name in sendUserName()) {
    print(name);
  }
}

Stream<String> sendUserName() async* {
  await Future.delayed(Duration(seconds: 2));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 2));
  yield 'Elon';
  await Future.delayed(Duration(seconds: 2));
  yield 'Bill';
}
