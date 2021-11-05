/*
Check NeetCode on Youtube for the original solution.
https://www.youtube.com/watch?v=pV2kpPD66nE&list=PLot-Xpze53ldBT_7QA8NVot219jFNr_GI&index=4

----------------------------------------------------------------
The problem on Leetcode
https://leetcode.com/problems/number-of-islands/


Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.


Example 1:

Input: grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
Output: 1
Example 2:

Input: grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
Output: 3


*/
import 'dart:collection';

void main() {
  List<List<String>> a = [
    ["1", "1", "0", "0", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "1", "0", "0"],
    ["0", "0", "0", "1", "1"]
  ];

  Solution.numIsland(a);
}

// The code start here.

class Solution {
  static int numIsland(List<List<String>> grid) {
    if (grid == []) return 0;

    int rows = grid.length;
    int cols = grid[0].length;

    Set<String> visited = {};
    int islands = 0;

    void bfs(int r, int c) {
      var queue = Queue<String>();

      // If you're writing this in Python, you can simply use a tuple.
      visited.add('$r$c');
      queue.addLast('$r$c');

      while (queue.isNotEmpty) {
        String point = queue.removeFirst();
        int row = int.parse(point[0]);
        int col = int.parse(point[1]);

        List<List<int>> directions = [
          [1, 0],
          [-1, 0],
          [0, 1],
          [0, -1]
        ];

        for (var item in directions) {
          int x = item[0];
          int y = item[1];

          r = row + x;
          c = col + y;

          if ((r >= 0 && r < rows) &&
              (c >= 0 && c < cols) &&
              (grid[r][c] == '1') &&
              (visited.contains('$r$c') == false)) {
            queue.addLast('$r$c');
            visited.add('$r$c');
          }
        }
      }
    }

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < rows; c++) {
        if ((grid[r][c] == '1') && (visited.contains('$r$c') == false)) {
          bfs(r, c);
          islands += 1;
        }
      }
    }
    return islands;
  }
}
