void main() {
  List<int> ls = [7, 2, -1, -5, 5, 4];
  print("Minimum Number is ${getMin(ls)}");
}

int getMin(List<int> ls) {
  int min = ls[0];
  for (int item in ls) {
    if (item < min) min = item;
  }
  return min;
}
