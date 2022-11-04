import 'dart:collection';

class Solution {
  Map<int, int> freqMap = HashMap();
  int singleNumber(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      if (!freqMap.containsKey(nums[i])) {
        freqMap[nums[i]] = 1;
      } else {
        freqMap[nums[i]] = freqMap[nums[i]]! + 1;
      }
    }
    var singleNumber =
        freqMap.keys.firstWhere((element) => freqMap[element] == 1);
    return singleNumber;
  }
}

void main(List<String> args) {
  int singleNumber = Solution().singleNumber([2, 2, 3, 3, 4, 4, 4, 6]);
  print(singleNumber);
}
