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
  func deleteMiddle(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else { return nil }
    var prev: ListNode?
    var slow = head
    var fast = head

    while fast?.next != nil {
      fast = fast?.next?.next
      prev = slow // 1 3 4
      slow = slow?.next 
    }
    // mid 찾고 나면 그 이후를 이어준다
    prev?.next = slow?.next

    return head
  }
}