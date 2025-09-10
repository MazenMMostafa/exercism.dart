class AtbashCipher {
  // Put your code here

  String decode(String y) {
    String Last = "";
    y = y.toLowerCase();
    for (int i = 0; i < y.length; i++) {
      if (y[i] == " ") {
        continue;
      }
      if (((y[i].codeUnitAt(0) >= 97 && y[i].codeUnitAt(0) <= 122))) {
        int location = y[i].codeUnitAt(0);
        int steps = location - 97;
        int newLocation = 122 - steps;

        Last = (Last) + String.fromCharCode(newLocation);
      } else if ((y[i].codeUnitAt(0) >= 48 && y[i].codeUnitAt(0) <= 57)) {
        Last = (Last) + y[i];
      } else {
        continue;
      }
    }
    return Last;
  }

  String encode(String y) {
    String result = "";
    String Raw = decode(y);
    int length = Raw.length;
    int count = 0;
    for (int i = 0; i < length; i++) {
      result += Raw[i];
      count++;

      if (count == 5 || i == length - 1) {
        if (i != length - 1) result += " ";
        count = 0;
      }
    }
    return result;
  }
}
