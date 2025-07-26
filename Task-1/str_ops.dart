void main() {
  String s1 = "Hello ";
  String s2 = "World";
  String Concatenated = s1 + s2;
  int length = s1.length + s2.length;
  String Substring = Concatenated.substring(0,7);
  print("Concatenated: " + Concatenated);
  print("Length: $length");
  print("Substring: " + Substring);
  print("Uppercase: " + Concatenated.toUpperCase());
  print("Lowercase: " + Concatenated.toLowerCase());
}
