void main() {
  print("hello world");

  //Number
  int num1 = 5;
  double num2 = 10.0;

  print(num1 * num2);
  print(num1 / num2);

  //String
  var str1 = 'Lorem';
  var str2 = 'ipsum';

  // String str3 = str1 + str2 + 'dolor';
  String str3 = '$str1  $str2 dolor';
  print(str3);

  var str4 = """Multi
  Line""";
  print(str4);

  var str5 = 'oi '
      'oi2 '
      'oi3';

  print(str5);

  //Boolean
  bool isBrowser = true;
  var isInvisible = false;

  print(isBrowser || isInvisible);
  print(isBrowser && isInvisible);
}
