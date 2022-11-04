//hello and welcome... to my new video
//this video is about two sum problem solution using HashMapMethod
//in the previous video i have showed the solution using bruteforce method.
// the hashMapMethod is more efficient than bruteforce method.
//lets start the problem
//given the inputs are: list of numbers are [1,2,3,4,5,6] and target is 5.
// we have to find the pair of two from the list of numbers that add up to 5 i.e target number.
//so we have to show the index of the respective numbers that add up to the target number 5.
//it is suggested that we should have exactly one solution...there can be multiple pairs of numbers but we have to provide exactly one pair.
//The solution in this case should be (1,2) where 1 and 2 are the index positions of the numbers that add up to target number.
//i.e (2 +3 = 5 )...

//ok now i will start coding

import 'dart:collection';

class TwoSumUsingHashMapMethod {
  List<int> nums;
  int target;

  List<int> twoSumUsingHashMap(List<int> nums, int target) {
    HashMap<int, int> numsMap = HashMap();
    for (int i = 0; i < nums.length; i++) {
      numsMap[nums[i]] = i;
      int complement = target - nums[i];
      if (numsMap.containsKey(complement)) {
        return [numsMap[complement]!, i];
      }
    }
    throw ArgumentError.value(target);
  }

  //creating constructor
  TwoSumUsingHashMapMethod(this.nums, this.target);
}

void main(List<String> args) {
  TwoSumUsingHashMapMethod twoSumObject =
      TwoSumUsingHashMapMethod([1, 2, 3, 4, 5, 6], 8);
  List<int> result =
      twoSumObject.twoSumUsingHashMap(twoSumObject.nums, twoSumObject.target);
  print(result);
}

//ok let's run the program
//thanks for watching
//videos like this coming soon !!!

//we can also change the input 
//lets say target is 8
//run the program
// (3,3) is the solution when the target is 8....
// and so on..... bye bye
