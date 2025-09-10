// Put your code here
int score(String y) {
  String? x;
  int count = 0;
  x = y.toUpperCase();
  for (int i = 0; i < x.length; i++) {
    if ("AEIOULNRST".contains(x[i])) {
      count += 1;
    } else if ("DG".contains(x[i])) {
      count += 2;
    } else if ("BCMP".contains(x[i])) {
      count += 3;
    } else if ("FHVWY".contains(x[i])) {
      count += 4;
    } else if ("K".contains(x[i])) {
      count += 5;
    } else if ("JX".contains(x[i])) {
      count += 8;
    } else if ("QZ".contains(x[i])) {
      count += 10;
    }
  }
  return count;
}
