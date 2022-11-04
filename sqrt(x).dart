class Solution {
  int sqrt(int x) {
    int low = 1;
    int high = x;
    int ans = 0;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      int sqr = mid * mid;

      if (sqr == x) {
        return mid;
      } else if (sqr < x) {
        ans = mid;
        low = mid + 1;
      } else if (sqr > x) {
        high = mid - 1;
      }
    }
    return ans;
  }
}

void main(List<String> args) {
  int result = Solution().sqrt(100);
  print(result);
}
