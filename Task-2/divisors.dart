import 'dart:io';

void main() {
  print("Enter the number: ");
  int num = int.parse(stdin.readLineSync().toString());
  List<int> divs = [];
  for (int i = 1; i < num; i++) {
    if (num % i == 0) divs.add(i);
  }
  print("The divisors for this number are: $divs");
}
