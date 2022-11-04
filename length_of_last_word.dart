class Solution {
  int lengthOfLastWord(String s) {
    int result = 0;
    bool flag = false;
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == ' ' && flag == true) {
        flag = false;
        break;
      } else if (s[i] != ' ') {
        flag = true;
        result++;
      }
    }
    return result;
  }
}

void main(List<String> args) {
  int result = Solution().lengthOfLastWord(' hello world ');
  print(result);
}
