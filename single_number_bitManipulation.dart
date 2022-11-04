class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      result ^= nums[i];
    }
    return result;
  }
}

void main(List<String> args) {
  int singleNumber = Solution().singleNumber([3, 3, 2, 2, 5, 5, 6]);
  print(singleNumber);
}
