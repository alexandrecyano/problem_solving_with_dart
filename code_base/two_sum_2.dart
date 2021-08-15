/*
https://www.youtube.com/watch?v=cQ1Oz4ckceM&list=PLot-Xpze53leF0FeHz2X0aG3zd0mr1AW_&index=10

Given an array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number.
Return the indices of the two numbers (1-indexed) as an integer array answer of size 2, where 1 <= answer[0] < answer[1] <= numbers.length.
The tests are generated such that there is exactly one solution. You may not use the same element twice.

_______________________________________________________________________________
Example 1:

Input: numbers = [2,7,11,15], target = 9

Output: [1,2]
Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.

_______________________________________________________________________________
Example 2:

Input: numbers = [2,3,4], target = 6
Output: [1,3]
Example 3:

Input: numbers = [-1,0], target = -1
Output: [1,2]



*/

void main() {
  twoSum([2, 7, 11, 15], 9);
}

List<int> twoSum(List<int> arr, int target) {
  int leftPointer = 0;
  int rightPointer = arr.length - 1;
  int currentSum;

  while (leftPointer < rightPointer) {
    currentSum = arr[leftPointer] + arr[rightPointer];
    if (currentSum > target) {
      rightPointer -= 1;
    } else if (currentSum < target) {
      leftPointer += 1;
    } else {
      return [leftPointer + 1, rightPointer + 1];
    }
  }

  return [];
}
