import 'package:characters/characters.dart';

class Solution {
  Map<String, int> map = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };

  int romanToInteger(String s) {
    int result = map[s.characters.characterAt(s.length - 1).toString()]!;
    for (int i = s.length - 2; i >= 0; i--) {
      int current = map[s.characters.characterAt(i).toString()]!;
      int next = map[s.characters.characterAt(i + 1).toString()]!;

      if (current < next) {
        result = result - current;
      } else {
        result = result + current;
      }
    }
    return result;
  }
}

void main(List<String> args) {
  Solution romantointegerObj = Solution();
  int result = romantointegerObj.romanToInteger("IV");
  print(result);
}

//let's run the program.
// input is CMMMI

//so the roman number CMMMI is converted to integer number 2901 which is the correct answer.

// we all know roman number IV is 4 in integer number.
//lets run it again ...

//thanks for watching...
//other videos like this coming soon...

//from this code,, you can convert any roman number to integer number...