class Solution {
  List<int> runningSum(List<int> nums) {
    int n = nums.length;
    List<int> runningSum = List<int>.filled(n, 0);

    for (int i = 0; i < n; i++) {
      int sum = 0;
      for (int j = 0; j <= i; j++) {
        sum = sum + nums[j];
      }
      runningSum[i] = sum;
    }
    return runningSum;
  }
}

void main(List<String> args) {
  List<int> runningSum = Solution().runningSum([1, 2, 3, 4, 5]);
  print(runningSum);
}
