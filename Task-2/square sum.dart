import 'dart:math';

int squareSum(List<int> nums) {
  int result = 0;
  nums.forEach((e) {
    result += e * e;
  });
  return result;
}

void main() {
  int res = squareSum([7, 2, 3]);
  print(res);
}
