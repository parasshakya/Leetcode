class Solution {
  static List<int> createTargetArray(List<int> nums, List<int> index) {
    List<int> target = [];
    for (int i = 0; i < nums.length; i++) {
      target.insert(index[i], nums[i]);
    }
    return target;
  }
}

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 3];
  List<int> index = [0, 1, 2, 2, 0, 1];
  List<int> targetArray = Solution.createTargetArray(nums, index);
  print(targetArray);
}
