/*
Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
You must write an algorithm that runs in O(n) time.
 

Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
Example 2:

Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9
 

Constraints:

0 <= nums.length <= 105
-109 <= nums[i] <= 109


*/

import 'dart:math';

void main() {
  longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]); // 9
  longestConsecutive([100, 4, 200, 1, 3, 2]); //4
  longestConsecutive([
    1,
    2,
    3,
    10,
    8,
    4,
    22,
    5,
  ]); // 5
}

int longestConsecutive(List<int> nums) {
  Set<int> numSet = nums.toSet();
  int longest = 0;
  int lenght = 0;
  int n;

  for (n in nums) {
    if (!(numSet.contains(n - 1))) {
      while (numSet.contains(n + lenght)) {
        lenght += 1;
      }
      longest = [lenght, longest].reduce(max);
    }
  }
  return longest;
}
