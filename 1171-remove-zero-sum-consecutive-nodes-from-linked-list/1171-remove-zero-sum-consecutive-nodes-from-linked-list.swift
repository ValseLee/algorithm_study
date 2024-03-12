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
  func removeZeroSumSublists(_ head: ListNode?) -> ListNode? {
    var map = [Int: ListNode]()
    var cur = head
    var sum = 0
    var newHead = ListNode(0)
    newHead.next = head // 0부터 시작해봅시다
    map[0] = newHead

    while cur != nil {
      // 누적합과 그 list를 전부 저장
      sum += cur!.val
      map[sum] = cur
      cur = cur!.next
    }

    // 초기화
    sum = 0
    cur = newHead

    while cur != nil {
      // 다시 누적합을 구할 건데
      sum += cur!.val
      // 이번엔, 이전에 더했던 적이 있는 녀석을 할당할 것
      cur!.next = map[sum]?.next
      cur = cur!.next
    }

    return newHead.next
  }
}
