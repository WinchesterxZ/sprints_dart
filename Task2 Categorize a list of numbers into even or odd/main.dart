void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> oddResult = [];
  List<int> evenResult = [];
  for (var num in numbers) {
    switch (num % 2) {
      case 0:
        evenResult.add(num);
        break;
      case 1:
        oddResult.add(num);
      // its not neccessarry to add default here as cases will always be 1 or 0
    }
  }
  print("Even Numbers: $evenResult");
  print("odd Numbers: $oddResult");

}
