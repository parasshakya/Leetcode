class Solution {
  static int countMatches(
      List<List<String>> items, String ruleKey, String ruleValue) {
    int count = 0;
    for (int i = 0; i < items.length; i++) {
      if (ruleKey == 'type') {
        if (items[i][0] == ruleValue) {
          count++;
        }
      }
      if (ruleKey == 'color') {
        if (items[i][1] == ruleValue) {
          count++;
        }
      }
      if (ruleKey == 'name') {
        if (items[i][2] == ruleValue) {
          count++;
        }
      }
    }
    return count;
  }
}

void main(List<String> args) {
  List<List<String>> items = [
    ['phone', 'red', 'samsung'],
    ['computer', 'white', 'pc'],
    ['watch', 'black', 'apple']
  ];
  String ruleKey = 'color';
  String ruleValue = 'white';
  int count = Solution.countMatches(items, ruleKey, ruleValue);
  print(count);
}



















































//using switch-case statement
// class Solution {
//   static int countMatches(
//       List<List<String>> items, String ruleKey, String ruleValue) {
//     int count = 0;
//     for (int i = 0; i < items.length; i++) {
//       switch (ruleKey) {
//         case 'type':
//           {
//             if (items[i][0] == ruleValue) {
//               count++;
//             }
//           }
//           break;
//         case 'color':
//           {
//             if (items[i][1] == ruleValue) {
//               count++;
//             }
//           }
//           break;
//         case 'name':
//           {
//             if (items[i][2] == ruleValue) {
//               count++;
//             }
//           }
//           break;
//       }
//     }
//     return count;
//   }
// }

// void main(List<String> args) {
//   List<List<String>> items = [
//     ['phone', 'red', 'samsung'],
//     ['computer', 'white', 'pc'],
//     ['watch', 'black', 'apple']
//   ];
//   String ruleKey = 'type';
//   String ruleValue = 'watch';
//   int count = Solution.countMatches(items, ruleKey, ruleValue);
//   print(count);
// }
