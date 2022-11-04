class Solution {
  int heightChecker(List<int> heights) {
    List<int> expected = [];
    expected.addAll(heights);
    expected.sort();
    int count = 0;
    for (int i = 0; i < heights.length; i++) {
      if (heights[i] != expected[i]) {
        count++;
      }
    }
    return count;
  }
}

void main(List<String> args) {
  print(Solution().heightChecker([1, 3, 2, 6, 5, 8]));
}
