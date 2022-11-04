// twoSum problem in leetCode
// Solution in Dart
// let's start
//using bruteforce method

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  int target = 6;

  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        int complement = target - nums[i];
        if (nums[j] == complement) {
          return [i, j];
        }
      }
    }
    throw ArgumentError.value(target);
  }

  List<int> result = twoSum(nums, target);
  print(result);
}

//thank you for watching
// other videos like this coming soon !!!!
