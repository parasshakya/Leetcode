class Solution {
  List<int> getConcatenation(List<int> nums) {
    int n = nums.length;
    List<int> ans = List<int>.filled(2 * n, 0);
    for (int i = 0; i < n; i++) {
      ans[i] = nums[i];
      ans[i + n] = nums[i];
    }
    return ans;
  }
}

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  List<int> concatenatedArray = Solution().getConcatenation(nums);
  print(concatenatedArray);
}
