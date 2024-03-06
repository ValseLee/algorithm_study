/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
  func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head?.next

    // 노드를 끝까지 탐색한다.
    while fast != nil {
      // 탐색 도중, 두개가 같아지면 연결된 곳이 있다.
      guard slow !== fast else { return true }

      slow = slow?.next
      fast = fast?.next?.next
    }

    return false
  }
}