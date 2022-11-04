class Solution {
  static String truncateSentence(String s, int k) {
    List<String> result = List.filled(k, '');
    List<String> lS = s.split(' ');
    for (int i = 0; i < k; i++) {
      result[i] = lS[i];
    }
    return result.join(' ');
  }
}

void main(List<String> args) {
  print(Solution.truncateSentence('hello world People Of THE eaRth', 1));
}
