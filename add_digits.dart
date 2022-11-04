class Solution {
  int addDigits(int num) {
    if (num == 0) {
      return num;
    }
    if (num % 9 == 0) {
      return 9;
    } else {
      return num % 9;
    }
  }
}

void main(List<String> args) {
  int num = 234;
  int result = Solution().addDigits(num);
  print(result);
}
