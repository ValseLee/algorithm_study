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
  func oddEvenList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    if head?.next == nil { return head }
    if head?.next?.next == nil { return head }
      
    var odd = head
    var even = head?.next
    var evenHead = even

    while even != nil, even?.next != nil {
      odd?.next = odd?.next?.next
      odd = odd?.next

      even?.next = even?.next?.next
      even = even?.next
    }

    odd?.next = evenHead

    return head
  }
}