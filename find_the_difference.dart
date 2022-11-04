class Solution {
  String findTheDifference(String s, String t) {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      result = result ^ s.codeUnitAt(i);
    }
    for (int j = 0; j < t.length; j++) {
      result = result ^ t.codeUnitAt(j);
    }
    return String.fromCharCode(result);
  }
}

void main(List<String> args) {
  String s = 'abcdefg';
  String t = 'bcdaegfh';
  String difference = Solution().findTheDifference(s, t);
  print(difference);
}
