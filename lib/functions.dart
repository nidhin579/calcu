String n = '';
String ques = '0';
int lll = 0;
double p1, p2, answer;
String choice = '';
String getInp(int num) {
  n = n + num.toString();

  return n;
}

int firstln = 0;
void oppress(int ln, String rlt) {
  p1 = double.parse(rlt);
  firstln = ln;
}

String calc(String result) {
  String arr = result;
  int len = result.length;
  int i = 0;
  if (choice == '+') {
    String part2 = "${arr.substring(firstln + 1, len)}";
    p2 = double.parse(part2);
    answer = p1 + p2;
  } else if (choice == '') {
    answer = double.parse(result);
  } else if (choice == 'X') {
    String part2 = "${arr.substring(firstln + 1, len)}";
    p2 = double.parse(part2);
    answer = p1 * p2;
  } else if (choice == '/') {
    String part2 = "${arr.substring(firstln + 1, len)}";
    p2 = double.parse(part2);
    answer = p1 / p2;
  } else if (choice == '%') {
    String part2 = "${arr.substring(firstln + 1, len)}";
    p2 = double.parse(part2);
    answer = p1 % p2;
  } else if (choice == '-') {
    String part2 = "${arr.substring(firstln + 1, len)}";
    p2 = double.parse(part2);
    answer = p1 - p2;
  } else {
    answer = p1;
  }
  ques = result;
  result = answer.toString();
  choice = '';
  return result;
}
