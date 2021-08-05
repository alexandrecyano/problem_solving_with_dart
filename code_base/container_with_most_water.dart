import 'dart:math';

void main() {
  maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
}

int maxArea(List<int> height) {
  int res = 0;
  int l = 0;
  int r = height.length - 1;
  int area;

  while (l < r) {
    area = (r - 1) * min(height[l], height[r]);
    res = max(res, area);

    if (height[l] < height[r]) {
      l += 1;
    } else {
      r -= 1;
    }
  }

  print(res);
  return res;
}
