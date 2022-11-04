class Solution {
  int minimumMoves(List<int> seats, List<int> students) {
    int n = seats.length;
    int sumOfDifference = 0;
    int difference = 0;
    List<int> sortedSeats = ascendingSort(seats);
    List<int> sortedStudents = ascendingSort(students);
    for (int i = 0; i < n; i++) {
      difference = seats[i] - students[i];
      if (difference < 0) {
        difference = 0 - difference;
      }
      sumOfDifference = sumOfDifference + difference;
    }
    return sumOfDifference;
  }

  List<int> ascendingSort(List<int> nums) {
    int temp = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    return nums;
  }
}

void main(List<String> args) {
  print(Solution().minimumMoves([3, 1, 5, 8, 10], [2, 7, 4, 11, 15]));
}
