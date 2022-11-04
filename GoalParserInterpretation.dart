class Solution {
  String interpret(String command) {
    String result = '';
    for (int i = 0; i < command.length; i++) {
      for (int j = i; j < command.length; j++) {
        if (command[j] == 'G') {
          result = result + 'G';
          break;
        }
        if (command[j] == '(' && command[j + 1] == ')') {
          result = result + 'o';
          i = j + 1;
          break;
        }
        if (command[j] == '(' && command[j + 1] == 'a') {
          result = result + 'al';
          i = j + 3;
          break;
        }
      }
    }
    return result;
  }
}

void main(List<String> args) {
  print(Solution().interpret('G()(al)'));
}
