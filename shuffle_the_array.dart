class Solution {
  List<int> shuffleTheArray(List<int> nums) {
    int n = nums.length ~/ 2;
    int j = 0;
    List<int> shuffledArray = [];
    for (int i = 0; i < n; i++) {
      j = i + n;
      shuffledArray.add(nums[i]);
      shuffledArray.add(nums[j]);
    }
    return shuffledArray;
  }
}

void main(List<String> args) {
  List<int> shuffledArray = Solution().shuffleTheArray([1, 2, 3, 1, 2, 3]);
  print(shuffledArray);
}
