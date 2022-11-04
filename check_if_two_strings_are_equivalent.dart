class Solution {
  bool arrayStringAreEqual(List<String> word1, List<String> word2) {
    String wordOne = word1.join();
    String wordTwo = word2.join();
    if (wordOne == wordTwo) {
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  List<String> word1 = ['hello', 'world'];
  List<String> word2 = ['hel', 'lo', 'w', 'orl', 'd', 'friends'];
  print(Solution().arrayStringAreEqual(word1, word2));
}
