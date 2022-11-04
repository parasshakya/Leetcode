class Solution {
  List<List<int>> mergeSimilarItems(
      List<List<int>> items1, List<List<int>> items2) {
    int n = items1.length > items2.length ? items1.length : items2.length;
    Map<int, int> items2Map = {};
    List<List<int>> ret = List.filled(n, List.filled(2, 0), growable: true);
    for (int i = 0; i < items2.length; i++) {
      items2Map[items2[i][0]] = items2[i][1];
    }

    for (int i = 0; i < items1.length; i++) {
      if (items2Map.containsKey(items1[i][0])) {
        ret[i][0] = items1[i][0];
        ret[i][1] = items1[i][1] + items2Map[items1[i][0]]!;
      } else {
        ret[i][0] = items1[i][0];
        ret[i][1] = items1[i][1];
      }
      print(ret);
    }

    ret.forEach((value) {
      if (!items2Map.containsKey(value[0])) {
        ret.add([
          items2Map.keys.firstWhere((element) => element == value[0]),
          items2Map.keys.firstWhere((element) => element == value[1])
        ]);
      }
    });

    return ret;
  }
}

void main(List<String> args) {
  print(Solution().mergeSimilarItems([
    [1, 2],
    [2, 3],
    [3, 4],
    [4, 5]
  ], [
    [1, 2],
    [2, 3],
    [3, 4],
    [4, 5],
    [5, 6]
  ]));
}
