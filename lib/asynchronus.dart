void asynProgram() {
  print("First Operation");
  delay3(3);
  print("Third Operation");
  delay2(2);
}

void delay2(int a) {
  Future.delayed(Duration(seconds: a), () => print("Last Operation"));
}

void delay3(int a) {
  Future.delayed(Duration(seconds: a), () => print("Second Operation"));
}
