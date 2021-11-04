/* 


Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the 
value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:

Input: x = 123
Output: 321

--------------------------------------------------------
Example 2:

Input: x = -123
Output: -321
Example 3:

----------------------------------------------------------
Input: x = 120
Output: 21
Example 4:

Input: x = 0
Output: 0
 

Constraints:
-231 <= x <= 231 - 1
*/

void main() {
  Solution.reverse(2147483647); // 0 as it is greater than [2^31-1]
  Solution.reverse(-251); // -152
  Solution.reverse(356); // 653
  Solution.reverse(3); //3
}

class Solution {
  static int reverse(int x) {
    if (x > -10 && x < 10) {
      return x;
    }

    while (x > 0) {
      if ((x % 10) == 0) {
        x = (x ~/ 10);
      } else {
        break;
      }
    }
    int res = 0;
    bool numSign = false;

    if (x < 0) {
      numSign = true;
      x *= -1;
    }

    while (x > 0) {
      res = res * 10 + x % 10;
      if ((res >= 2147483647) || res <= -2147483647) {
        return 0;
      }
      x = x ~/ 10;
    }

    if (numSign == true) {
      return res *= -1;
    }

    return res;
  }
}
