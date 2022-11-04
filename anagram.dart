class Solution {
  bool isAnagram(String s, String t) {
    List<int> countList = List<int>.filled(26, 0);

    if (s.length != t.length) {
      return false;
    }

    for (int i = 0; i < s.length; i++) {
      countList[s.codeUnits[i] -
          97]++; //codeUnits[i] returns the ascii code of the ith index in the string.
      countList[t.codeUnits[i] - 97]--; // 97 is the ascii code for 'a'.

    }
    for (int j = 0; j < countList.length; j++) {
      if (countList[j] != 0) {
        return false;
      }
    }
    return true;
  }
}

void main(List<String> args) {
  bool result = Solution().isAnagram('poploli', 'lolipop');
  print(result);
}
