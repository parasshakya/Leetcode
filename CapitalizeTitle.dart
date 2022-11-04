class Solution {
  String capitalizeTitle(String title) {
    for (int i = 0; i < title.length;) {
      int count = 0;
      for (int j = i; j < title.length; j++) {
        if (title[j] == ' ' && count > 2) {
          title[i].toUpperCase();
          i = j + 1;
          break;
        }
        count++;
        if ((title[j] == title[title.length - 1]) && count > 2) {
          title[i].toUpperCase();
          i = j + 1;
          break;
        }
      }
    }
    return title;
  }
}

void main(List<String> args) {
  print(Solution().capitalizeTitle('hello people how are you my world'));
}
