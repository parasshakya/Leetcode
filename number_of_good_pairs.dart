class Solution {
  static int numIdenticalPairs(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = nums.length - 1; j > i; j--) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }
    }
    return count;
  }
}

void main(List<String> args) {
  int numberOfGoodPairs =
      Solution.numIdenticalPairs([1, 2, 3, 1, 2, 3, 1, 2, 3, 4, 5, 6]);
  print(numberOfGoodPairs);
}
