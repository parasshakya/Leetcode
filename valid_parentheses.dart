class Node<T> {
  T value;
  Node<T>? next;
  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) {
      return '$value';
    }
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }
}

class Solution {
  Node? mergeTwoSortedList(Node? l1, Node? l2) {
    Node dummy = Node(value: 0);
    Node head = dummy;

    while (l1 != null && l2 != null) {
      if (l1.value < l2.value) {
        dummy.next = l1;
        l1 = l1.next;
      } else {
        dummy.next = l2;
        l2 = l2.next;
      }
      dummy = dummy.next!;
    }
    if (l1 != null) {
      dummy.next = l1;
      l1 = l1.next;
    } else if (l2 != null) {
      dummy.next = l2;
      l2 = l2.next;
    }
    return head.next;
  }
}

void main(List<String> args) {
  LinkedList l1 = LinkedList();
  l1.push(14);
  l1.push(12);
  l1.push(10);

  LinkedList l2 = LinkedList();
  l2.push(15);
  l2.push(13);
  l2.push(11);

  Node? sortedListNode = Solution().mergeTwoSortedList(l1.head, l2.head);
  print(sortedListNode);
}
