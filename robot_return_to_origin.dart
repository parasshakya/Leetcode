class Solution {
  bool robotReturnToOrigin(String moves) {
    int x = 0;
    int y = 0;
    List<String> listOfMoves = moves.split('');

    for (int i = 0; i < listOfMoves.length; i++) {
      if (listOfMoves[i] == 'U') {
        y++;
      } else if (listOfMoves[i] == 'D') {
        y--;
      } else if (listOfMoves[i] == 'L') {
        x--;
      } else if (listOfMoves[i] == 'R') {
        x++;
      }
    }
    return (x == 0 && y == 0);
  }
}

void main(List<String> args) {
  String input = 'UDDUDU';
  final isRobotInOrigin = Solution().robotReturnToOrigin(input);
  print(isRobotInOrigin);
}
