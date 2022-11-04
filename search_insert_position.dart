class Solution {
  int searchInsert(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;
    int mid = 0;

    while (low <= high) {
      mid = (low + high) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return low;
  }
}

void main(List<String> args) {
  int result = Solution().searchInsert([1, 3, 5, 7, 8], 10);
  print(result);
}
