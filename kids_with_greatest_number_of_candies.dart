class Solution {
  static List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> result = List.filled(candies.length, false);
    int sum = 0;
    int greatestElement =
        candies.reduce((current, next) => current > next ? current : next);
    for (int i = 0; i < candies.length; i++) {
      sum = candies[i] + extraCandies;
      if (sum == greatestElement || sum > greatestElement) {
        result[i] = true;
      } else {
        result[i] = false;
      }
    }
    return result;
  }
}

void main(List<String> args) {
  List<int> candies = [1, 2, 3, 4, 5, 6, 8, 10, 12, 15];
  int extraCandies = 5;
  List<bool> result = Solution.kidsWithCandies(candies, extraCandies);
  print(result);
}
