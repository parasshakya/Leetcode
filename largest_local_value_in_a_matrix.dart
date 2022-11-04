import 'dart:math';

class Solution {
  List<List<int>> largestLocalValues(List<List<int>> grid) {
    int n = grid.length;
    List<List<int>> result = List.filled(n - 2, List.filled(n - 2, 0));
    for (int i = 0; i < n - 2; i++) {
      for (int j = 0; j < n - 2; j++) {
        result[i][j] = findMaxIn3X3Grid(grid, i, j);
      }
    }
    return result;
  }

  int findMaxIn3X3Grid(List<List<int>> grid, int i, int j) {
    int larger = 0;
    for (int x = i; x < i + 3; x++) {
      for (int y = j; y < j + 3; y++) {
        larger = max(grid[x][y], larger);
      }
    }
    return larger;
  }
}

void main(List<String> args) {
  List<List<int>> grid = [
    [1, 13, 3, 4],
    [4, 10, 6, 4],
    [7, 8, 9, 4],
    [1, 2, 3, 4]
  ];
  List<List<int>> largestLocalValues = Solution().largestLocalValues(grid);
  print(largestLocalValues);
}
