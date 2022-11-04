class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }
      digits[i] = 0;
    }
    List<int> new_array = List.filled(digits.length + 1, 0);
    new_array[0] = 1;
    return new_array;
  }
}

void main(List<String> args) {
  List<int> result = Solution().plusOne([3, 9, 7, 2]);
  print(result);
}
