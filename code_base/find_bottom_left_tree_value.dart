/*
Given the root of a binary tree, return the leftmost value in the last row of the tree.

*/

import 'dart:collection';

class Node<T> {
  final T value;
  Node<T>? left, right;
  Node(this.value, {this.left, this.right});
}

void main() {
  Node y = Node(2, left: Node(3), right: Node(5));
  Node k = Node(9, left: Node(11), right: Node(15));
  Node z = Node(5, left: Node(1), right: k);
  Node root = Node(8, left: y, right: z);

  /*
   
          8
         / \
        2   5
      / \  / \
     3  5  1  9
             / \
             11 15
   
   Answer is 11.
   */

  Solution.findBottomLeftValue(root);

  //print(car.left!.value);
}

class Solution {
  static int findBottomLeftValue(Node inputRoot) {
    var queue = Queue<Node>();
    queue.add(inputRoot);

    Node leftmost = inputRoot;

    while (queue.isNotEmpty) {
      leftmost = queue.removeFirst();

      if (leftmost.right != null) queue.add(leftmost.right!);
      if (leftmost.left != null) queue.add(leftmost.left!);
    }
    print(leftmost.value);
    return leftmost.value;
  }
}
