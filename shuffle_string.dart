class Solution {
  static String restoreString(String s, List<int> indices) {
    List<String> ls = s.split('');
    for (int i = 0; i < indices.length; i++) {
      for (int j = 0; j < indices.length; j++) {
        if (indices[j] == i) {
          ls[i] = s[j];
        }
      }
    }
    return ls.join();
  }
}

void main(List<String> args) {
  String s = 'worldhello';
  List<int> indices = [5, 6, 7, 8, 9, 0, 1, 2, 3, 4];
  String restoredString = Solution.restoreString(s, indices);
  print(restoredString);
}
