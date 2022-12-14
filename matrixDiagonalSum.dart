class Solution {
  static int diagonalSum(List<List<int>> mat) {
    int n = mat.length;
    int sum = 0;

    for (int i = 0; i < n; i++) {
      sum = sum + mat[i][i];
    }
    for (int i = 0; i < n; i++) {
      sum = sum + mat[i][n - (i + 1)];
    }
    if (n.isOdd) {
      sum = sum - mat[n ~/ 2][n ~/ 2];
    }
    return sum;
  }
}

void main(List<String> args) {
  var matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  print(Solution.diagonalSum(matrix));
}
