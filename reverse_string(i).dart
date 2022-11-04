class Solution {
  void reverseString(List<String> s) {
    int a_pointer = 0;
    int b_pointer = s.length - 1;

    while (a_pointer < b_pointer) {
      String temp = s[a_pointer];
      s[a_pointer] = s[b_pointer];
      s[b_pointer] = temp;

      a_pointer++;
      b_pointer--;
    }
    print(s);
  }
}

void main(List<String> args) {
  Solution().reverseString(['r', 'e', 'v', 'e', 'r', 's', 'e']);
}
