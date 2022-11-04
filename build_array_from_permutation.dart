class Solution {
  List<int> buildArray(List<int> nums) {
    int n = nums.length;
    List<int> ans = List<int>.filled(n, 0);
    for (int i = 0; i < n; i++) {
      ans[i] = nums[nums[i]];
    }
    return ans;
  }
}

void main(List<String> args) {
  List<int> nums = [0, 2, 4, 5, 3, 1];
  List<int> arrayFromPermutation = Solution().buildArray(nums);
  print(arrayFromPermutation);
}
