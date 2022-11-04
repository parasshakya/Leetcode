class Solution {
  void moveZeroes(List<int> nums) {
    int left = 0;
    int right = 0;
    int temp = 0;

    while (right < nums.length) {
      if (nums[right] == 0) {
        right++;
      } else {
        temp = nums[left];
        nums[left] = nums[right];
        nums[right] = temp;
        right++;
        left++;
      }
    }
  }
}

void main(List<String> args) {
  List<int> nums = [0, 1, 0, 2, 0, 3, 0, 4, 5, 6, 0, 0, 7];
  Solution().moveZeroes(nums);
  print(nums);
}
