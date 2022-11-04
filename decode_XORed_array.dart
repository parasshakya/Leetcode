class Solution {
  static List<int> decode(List<int> encoded, int first) {
    List<int> hiddenArray = List.filled(encoded.length + 1, 0);
    hiddenArray[0] = first;
    for (int i = 1; i < hiddenArray.length; i++) {
      hiddenArray[i] = encoded[i - 1] ^ first;
      first = hiddenArray[i];
    }
    return hiddenArray;
  }
}

void main(List<String> args) {
  List<int> encodedArray = [3, 2, 3, 4, 5];
  int first = 3;
  List<int> decodedArray = Solution.decode(encodedArray, first);
  print(decodedArray);
}
