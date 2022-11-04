class Solution {
  int maxumumWealth(List<List<int>> accounts) {
    List<int> sum = List.filled(accounts.length, 0);
    for (int i = 0; i < accounts.length; i++) {
      for (int j = 0; j < accounts[i].length; j++) {
        sum[i] = sum[i] + accounts[i][j];
      }
    }
    return sum.reduce((current, next) => current > next ? current : next);
  }
}

void main(List<String> args) {
  int maxWealth = Solution().maxumumWealth([
    [1, 2, 3],
    [2, 3, 6],
    [3, 4, 5],
    [10, 11, 12]
  ]);
  print(maxWealth);
}
