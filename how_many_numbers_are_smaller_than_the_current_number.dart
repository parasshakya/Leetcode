class Solution {
  static List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> result = List.filled(nums.length, 0);
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (j == i) {
          continue;
        }
        if (nums[i] > nums[j]) {
          result[i] = result[i] + 1;
        }
      }
    }
    return result;
  }
}

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 5, 2, 10, 6, 8, 11, 20];
  List<int> result = Solution.smallerNumbersThanCurrent(nums);
  print(result);
}
