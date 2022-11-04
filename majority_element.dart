class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int element = 0;

    for (int i = 0; i < nums.length; i++) {
      if (count == 0) {
        element = nums[i];
      }
      if (element == nums[i]) {
        count++;
      } else {
        count--;
      }
    }
    return element;
  }
}

void main(List<String> args) {
  int result = Solution().majorityElement([1, 3, 4, 5, 5, 6, 7, 7, 7, 7]);
  print(result);
}
