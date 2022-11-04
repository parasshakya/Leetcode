class Solution {
  int countConsistentStrings(String allowed, List<String> words) {
    var allowedSet = <String>{};
    for (int i = 0; i < allowed.length; i++) {
      allowedSet.add(allowed[i]);
    }
    int count = 0;
    for (int i = 0; i < words.length; i++) {
      bool status = true;
      for (int j = 0; j < words[i].length; j++) {
        if (!allowedSet.contains(words[i][j])) {
          status = false;
          break;
        }
      }
      if (status) {
        count++;
      }
    }
    return count;
  }
}

void main(List<String> args) {
  print(Solution().countConsistentStrings('ab', ['aa', 'bbb', 'ab']));
}
