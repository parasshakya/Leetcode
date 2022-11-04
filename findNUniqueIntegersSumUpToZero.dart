class Solution {
  List<int> sumZero(int n) {
    List<int> arr = List.filled(n, 0);
    if (n % 2 != 0) {
      for (int i = 0; i < arr.length - 1; i = i + 2) {
        arr[i] = i + 1;
        arr[i + 1] = -(i + 1);
      }
      arr[arr.length - 1] = 0;
    } else {
      for (int i = 0; i < arr.length; i = i + 2) {
        arr[i] = i + 1;
        arr[i + 1] = -(i + 1);
      }
    }
    return arr;
  }
}
