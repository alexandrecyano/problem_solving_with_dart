/*  Binary Search

Given an array of integers, build a fucntion that searches for a specific number.
Suppose you have: [2, 4, 5, 6, 8, 9] and target = 6;
min_index = 0
max_index = 6 -1 = 5 (the lenght of the array -1)
mid_index = (0 + 5)/2 = 2.5 floor equal to 2.
mid_value[mid_index] = 5 (mid_value[2] =5)
Since mid value is not equal to target, we will perform the following:

a ==== > if mid_value < target => then min_index = mid_index +1
b =====> if mid_value > target => then max_index = mid_index -1

In our case, mid_value is less than target, so we will perform (a)
 min_index = mid_index +1

 so, we will be seaching in the upper half of the array only until mid_value == target.

-----------------------------------------------------------

Time Complexity: O(logN)

*/

int binarySearch(List<int> arr, int target) {
  int min = 0;
  int max = arr.length - 1;

  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (target == arr[mid]) {
      return mid;
    } else if (target < arr[mid]) {
      max = mid - 1;
    } else {
      min = min + 1;
    }
  }
  return -1;
}

void main() {
  binarySearch([
    2,
    4,
    5,
    6,
  ], 6);
}
