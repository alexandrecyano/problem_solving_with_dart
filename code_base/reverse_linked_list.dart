/*
Given the head of a singly linked list, reverse the list, and return the reversed list.
*/

void main() {
  Node k = Node(4, next: Node(5));
  Node y = Node(2, next: Node(3, next: k));
  Node head = Node(1, next: y);

  print(Solution.reverseList(head));
}

class Node<T> {
  final T data;
  Node<T>? next;
  Node(this.data, {this.next});
}

class Solution {
  static Node? reverseList(Node? head) {
    Node? prev;
    Node? curr = head;

    while (curr != null) {
      print(curr.data);
      Node? save = curr.next;
      curr.next = prev;
      prev = curr;
      curr = save;
    }

    //The new head will be saved in prev.
    return prev;
  }
}
