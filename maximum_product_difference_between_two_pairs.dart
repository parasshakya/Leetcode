class Solution {
  static int maxProductDifference(List<int> nums) {
    nums.sort();
    int maxPairProduct = nums[nums.length - 1] * nums[nums.length - 2];
    int minPairProduct = nums[0] * nums[1];
    return maxPairProduct - minPairProduct;
  }
}

void main(List<String> args) {
  print(Solution.maxProductDifference([1, 3, 5, 7, 8, 10]));
}
