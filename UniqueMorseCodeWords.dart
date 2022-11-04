class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    Map morseCodeMap = {
      'a': ".-",
      'b': "-...",
      'c': "-.-.",
      'd': "-..",
      'e': ".",
      'f': "..-.",
      'g': "--.",
      'h': "....",
      'i': "..",
      'j': ".---",
      'k': "-.-",
      'l': ".-..",
      'm': "--",
      'n': "-.",
      'o': "---",
      'p': ".--.",
      'q': "--.-",
      'r': ".-.",
      's': "...",
      't': "-",
      'u': "..-",
      'v': "...-",
      'w': ".--",
      'x': "-..-",
      'y': "-.--",
      'z': "--.."
    };
    Set<String> setOfConcatenation = {};
    int count = 0;
    for (int i = 0; i < words.length; i++) {
      String concatenation = '';
      for (int j = 0; j < words[i].length; j++) {
        concatenation = concatenation + morseCodeMap[words[i][j]];
      }
      setOfConcatenation.add(concatenation);
    }
    return setOfConcatenation.length;
  }
}

void main(List<String> args) {
  print(Solution()
      .uniqueMorseRepresentations(['abc', 'def', 'ghi', 'abc', 'ijk']));
}
