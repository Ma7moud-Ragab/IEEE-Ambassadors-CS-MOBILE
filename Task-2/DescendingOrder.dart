import 'dart:io';

void descending(String nums) {
  List des = nums.split('');
  nums = '';

  while (des.isNotEmpty) {
    int c = 0;
    int max = int.parse(des[0]);
    for (int j = 1; j < des.length; j++) {
      if (max < int.parse(des[j])) {
        max = int.parse(des[j]);
        c = j;
      }
    }
    nums += "$max";
    des.removeAt(c);
  }
  print("Descending order of the digits: $nums");
}

void main() {
  stdout.write("Enter the numbers: ");
  String nums = stdin.readLineSync().toString();
  descending(nums);
}
