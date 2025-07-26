void main() {
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;

  int largest = num1;
  int smallest = num1;
  if (largest < num2)
    largest = num2;
  else
    smallest = num2;
  if (largest < num3)
    largest = num3;
  else if (smallest > num3) smallest = num3;

  print("Numbers : $num1 ,$num2 ,$num3");
  print("largest number: $largest");
  print("Smallest number: $smallest");
}
