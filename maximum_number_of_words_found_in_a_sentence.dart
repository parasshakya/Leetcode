class Solution {
  static int mostWordsFound(List<String> sentences) {
    List<int> listOfWordCount = List.filled(sentences.length, 0);
    for (int i = 0; i < sentences.length; i++) {
      listOfWordCount[i] = sentences[i].split(' ').length;
    }
    return listOfWordCount
        .reduce((current, next) => current > next ? current : next);
  }
}

void main(List<String> args) {
  int result = Solution.mostWordsFound(
      ['hello friends', 'hello dear friends', 'hello ladies and gentlemen']);
  print(result);
}
