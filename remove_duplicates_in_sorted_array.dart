class Solution {
  int removeDuplicates(List<int> nums) {
    int j = 1;
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1]) {
        nums[j++] = nums[i + 1];
      }
    }
    for (int k = j; k < nums.length; k++) {
      nums[k] = 0;
    }
    return j;
  }
}

void main(List<String> args) {
  List<int> nums = [1, 2, 2, 3, 4, 5, 5, 5, 6];
  print('Input List = $nums');
  int result = Solution().removeDuplicates(nums);
  print('Resulting list = $nums');
  print(
      'Hence, the number of unique elements in the list is $result and the unique elements are ${nums.take(result)}');
  //let's execute the program...
  //thank you for watching ... other videos like this coming soon!!!
}
