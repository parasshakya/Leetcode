class Solution {
  String toLowerCase(String s) {
    String upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';
    String result = '';
    int index = 0;
    for (int i = 0; i < s.length; i++) {
      if (upperCaseLetters.contains(s[i])) {
        index = upperCaseLetters.indexOf(s[i]);
        result = result + lowerCaseLetters[index];
      } else {
        result = result + s[i];
      }
    }
    return result;
  }
}

void main(List<String> args) {
  print(Solution().toLowerCase('HeLLoWorLD'));
}
