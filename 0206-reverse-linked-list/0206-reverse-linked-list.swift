/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
  func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var current = head

    while current != nil {
      // 이 next는 Pointer의 방향을 의미할 뿐.
      // 모든 LikedList는 자기 자신과 자기 다음만 알고 있다.
      let next = current?.next
      // current의 다음을 '이전'으로 향하도록 돌려준다.
      current?.next = prev
      // node도 할당해준다.
      prev = current
      // 앞서 저장했던 pointer 방향을 current에 넣어준다.
      current = next
    }

    return prev
  }
}