class Solution {
  String reverseWords(String s) {
    int anchor = 0;
    List<String> lStr = s.split('');
    for (int i = 0; i < lStr.length; i++) {
      if (lStr[i] == ' ') {
        reverse(lStr, anchor, i - 1);
        anchor = i + 1;
      }
    }
    reverse(lStr, anchor, lStr.length - 1);
    return lStr.join('');
  }

  void reverse(List<String> s, int start, int end) {
    while (start < end) {
      String temp = s[start];
      s[start] = s[end];
      s[end] = temp;

      start++;
      end--;
    }
  }
}

void main(List<String> args) {
  String result = Solution().reverseWords('hello friend ! how are you???');
  print(result);
}
