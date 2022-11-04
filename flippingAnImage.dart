class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    for (int i = 0; i < image.length; i++) {
      int k = 0;
      int j = image.length - 1;
      int temp = 0;
      while (k < j) {
        temp = image[i][k];
        image[i][k] = image[i][j];
        image[i][j] = temp;
        k++;
        j--;
      }
      for (int l = 0; l < image[i].length; l++) {
        if (image[i][l] == 0) {
          image[i][l] = 1;
        } else if (image[i][l] == 1) {
          image[i][l] = 0;
        }
      }
    }
    return image;
  }
}

void main(List<String> args) {
  print(Solution().flipAndInvertImage([
    [1, 0, 0, 0],
    [1, 0, 0, 0],
    [1, 0, 0, 0],
    [1, 0, 0, 0]
  ]));
}
