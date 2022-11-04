class Solution {
  int prefixCount(List<String> words, String pref) {
    int count = 0;
    bool status = false;
    for (int i = 0; i < words.length; i++) {
      for (int j = 0; j < pref.length; j++) {
        if (words[i].length < pref.length) {
          status = false;
          break;
        }
        if (words[i][j] == pref[j]) {
          status = true;
        } else {
          status = false;
          break;
        }
      }
      if (status == true) {
        count++;
      }
    }
    return count;
  }
}

void main(List<String> args) {
  print(Solution().prefixCount([
    "lcc",
    "psl",
    "bqybsg",
    "rfzpp",
    "bqynodm",
    "bqyjn",
    "ich",
    "bqycn",
    "ylkvdrh",
    "irjg",
    "bqyqwaxg",
    "bqyuyw",
    "bqyywgy",
    "bqyqx",
    "fshrgwj",
    "bqyptjif",
    "bqypg",
    "bqyyfdm",
    "bqyslg",
    "mz"
  ], 'bqy'));
}
