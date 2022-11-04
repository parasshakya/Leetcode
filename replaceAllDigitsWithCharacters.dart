class Solution {
  String replaceDigits(String s) {
    String result = '';
    if (s.length == 1) {
      return s;
    }
    if (s.length.isEven) {
      for (int i = 1; i < s.length; i = i + 2) {
        result = result + s[i - 1] + shift(s[i - 1], int.parse(s[i]));
      }
    }
    if (s.length.isOdd) {
      for (int i = 1; i < s.length; i = i + 2) {
        result = result + s[i - 1] + shift(s[i - 1], int.parse(s[i]));
      }
      result = result + s[s.length - 1];
    }
    return result;
  }

  String shift(String c, int x) {
    int ascii = c.codeUnitAt(0);
    int temp = ascii + x;
    return String.fromCharCode(temp);
  }
}

void main(List<String> args) {
  print(Solution().replaceDigits('a1b1c1d2e6i4g9'));
}
