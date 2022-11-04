class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }
    int reversedNumber = 0;
    while (x > reversedNumber) {
      reversedNumber = reversedNumber * 10 + x % 10;
      x = x ~/ 10;
    }
    return x == reversedNumber || x == reversedNumber ~/ 10;
  }
}

void main(List<String> args) {
  Solution palindromeObj = Solution();
  bool result = palindromeObj.isPalindrome(1222221);
  print(result);
}

//let's run the program
//input is 1222221 and the answer is true.
//ok let's run...

//thank you for watching...
//videos like this coming soon...