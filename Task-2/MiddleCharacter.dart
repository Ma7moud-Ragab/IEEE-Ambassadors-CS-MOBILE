import 'dart:ffi';
import 'dart:io';

void main() {
  stdout.write("Enter the string: ");
  String? s = stdin.readLineSync().toString();
  if (s.isNotEmpty) {
    List list = s.split("").toList();
    int len = list.length;
    if (len % 2 == 0) {
      print(
          "Middle characters: ${list[(len ~/ 2 - 1)] + list[(len / 2).toInt()]}");
    } else
      print("Middle characters: ${list[(len ~/ 2)]}");
  } else {
    print("No input provided.");
  }
}
