class Solution {
  int finalValueAferOperations(List<String> operations) {
    int x = 0;
    for (int i = 0; i < operations.length; i++) {
      if (operations[i] == '++X' || operations[i] == 'X++') {
        x++;
      }
      if (operations[i] == '--X' || operations[i] == 'X--') {
        x--;
      }
    }
    return x;
  }
}

void main(List<String> args) {
  int result =
      Solution().finalValueAferOperations(['X++', '--X', 'X++', 'X++', 'X--']);
  print(result);
}
