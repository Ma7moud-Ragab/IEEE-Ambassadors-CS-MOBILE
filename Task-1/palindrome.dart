import 'dart:io';

void main() {
  print("Program started");
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    String rev = input.split('').reversed.join('');
    if (input == rev)
      print("It is a palindrome!");
    else
      print("Not a palindrome.");
  } else
    print("The input is invalid");
}
