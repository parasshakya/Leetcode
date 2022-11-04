class Solution {
  String addBinary(String a, String b) {
    int carry = 0;
    int alength = a.length;
    int blength = b.length;
    int i = 0;
    String ans = '';

    while (i < alength || i < blength || carry != 0) {
      int x = 0;
      if (i < alength && a[alength - i - 1] == '1') {
        x = 1;
      }
      int y = 0;
      if (i < blength && b[blength - i - 1] == '1') {
        y = 1;
      }
      ans = ((x + y + carry) % 2).toString() + ans;
      carry = (carry + x + y) ~/ 2;
      i++;
    }
    return ans;
  }
}

void main(List<String> args) {
  String result = Solution().addBinary('100', '10');
  print(result);
}
