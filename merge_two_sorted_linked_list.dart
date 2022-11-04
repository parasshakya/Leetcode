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
    // TODO: implement toString
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }
}

class Solution {
  Node? mergeTwoSortedList(Node? n1, Node? n2) {
    Node dummy = Node(value: 0);
    Node head = dummy;

    while (n1 != null && n2 != null) {
      if (n1.value < n2.value) {
        dummy.next = n1;
        n1 = n1.next;
      } else {
        dummy.next = n2;
        n2 = n2.next;
      }
      dummy = dummy.next!;
    }
    if (n1 != null) {
      dummy.next = n1;
      n1 = n1.next;
    } else if (n2 != null) {
      dummy.next = n2;
      n2 = n2.next;
    }
    return head.next;
  }
}

void main(List<String> args) {
  LinkedList l1 = LinkedList();

  LinkedList l2 = LinkedList();

  Node? sortedListNode = Solution().mergeTwoSortedList(l1.head, l2.head);
  print(sortedListNode);
}
//let's run the program....
//Thank you for watching..cheers!!!
//other videos like this coming soon!!!
//let's run it again...