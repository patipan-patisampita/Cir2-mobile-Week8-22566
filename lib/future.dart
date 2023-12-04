void getUserName() async {
  try {
    print("Start");
    String data = await sendUserName();
    print(data);
  } catch (e) {
    print("Some error $e");
  }
  print("End");
}

Future<String> sendUserName() {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}
