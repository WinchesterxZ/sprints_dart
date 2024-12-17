import 'dart:io';

void main() {
  print("Enter A Number To Check Whether its Positvie or nagative and even or odd");
  String? input = stdin.readLineSync();
  if (input != null && int.tryParse(input) != null) {
    int num = int.parse(input);
    if (num > 0) {
      print(num % 2 == 0 ? "Positive Even" : "Positive Odd");
    } else {
      print(num % 2 == 0 ? "Negative Even" : "Negative Odd");
    }
  } else {
    print("Please Enter A Valid Number");
  }
}
