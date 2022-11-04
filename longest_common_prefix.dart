class Solution {
  String longestCommonPrefix(List<String> s) {
    if (s.isEmpty) {
      return 'empty string';
    }
    String prefix = s[0];
    for (int i = 1; i < s.length; i++) {
      while (s[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) {
          return 'There is no common prefix among the list of strings';
        }
      }
    }
    return prefix;
  }
}

void main(List<String> args) {
  String result = Solution().longestCommonPrefix(['hello', 'he', 'helipad']);
  print(result);
}

//let's run the program with input ['hello', 'he', 'helipad'],, the answer is 'he'.
//thank you for watching..
//other videos like this coming soon!!!