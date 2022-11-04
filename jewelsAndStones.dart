import 'dart:collection';

class Solution {
  int numJewelsInStones(String jewels, String stones) {
    final Map<String, int> jewelsMap = HashMap();
    for (int i = 0; i < jewels.length; i++) {
      jewelsMap[jewels[i]] = 0;
    }
    for (int i = 0; i < stones.length; i++) {
      if (jewelsMap.containsKey(stones[i])) {
        jewelsMap[stones[i]] = jewelsMap[stones[i]]! + 1;
      }
    }
    int count = 0;
    jewelsMap.forEach((key, value) {
      count = count + value;
    });
    return count;
  }
}

void main(List<String> args) {
  print(Solution().numJewelsInStones('aAB', 'aABBbbacc'));
}
