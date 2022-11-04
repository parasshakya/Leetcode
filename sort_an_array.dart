class Solution {
  List<int> descendingSort(List<int> nums) {
    int temp = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] < nums[j]) {
          temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    return nums;
  }

  List<int> ascendingSort(List<int> nums) {
    int temp = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    return nums;
  }
}

void main(List<String> args) {
  List<int> listForAscendingSort = [5, 4, 3, 2, 1];
  List<int> resultAsc = Solution().ascendingSort(listForAscendingSort);
  List<int> listForDescendingSort = [1, 2, 3, 4, 5];
  List<int> resultDesc = Solution().descendingSort(listForDescendingSort);
  print(resultAsc);
  print(resultDesc);
}
