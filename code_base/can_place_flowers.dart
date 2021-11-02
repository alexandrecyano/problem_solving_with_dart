/*

Check the Python solution by Neetcode: https://www.youtube.com/watch?v=ZGxqqjljpUI

You have a long flowerbed in which some of the plots are planted, and 
some are not. However, flowers cannot be planted in adjacent plots.
Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means 
not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

 

Example 1:

Input: flowerbed = [1,0,0,0,1], n = 1
Output: true


Example 2:
Input: flowerbed = [1,0,0,0,1], n = 2
Output: false

*/

void main() {
  Solution.canPlaceFlowers([1, 0, 0, 1, 0, 0, 1], 2); // false
  Solution.canPlaceFlowers([1, 0, 0, 0, 1], 1); // true
  Solution.canPlaceFlowers([1, 0, 0, 0, 0, 1], 2); // false
  Solution.canPlaceFlowers([1, 0, 0, 0, 0, 0, 2], 1); // true
}

class Solution {
  static bool canPlaceFlowers(List<int> flowerbed, int n) {
    var f = [0] + flowerbed + [0];
    //The line above will add zero at the beginning and at the and of list f.

    for (int index = 1; index < f.length; index++) {
      if ((f[index - 1] == 0) && (f[index] == 0) && (f[index + 1] == 0)) {
        f[index] = 1;
        n -= 1;
      }
    }
    return n <= 0;
  }
}
