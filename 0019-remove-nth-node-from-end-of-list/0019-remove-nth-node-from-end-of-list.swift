class Solution {
  // fast slow node
  // 1,2,3,4,5 || 2
  // 뒤에서 nth 노드 제거

  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var fast = head
    var slow = head
    var cnt = n

    // slow -> end(nth) -> fast
    while cnt > 0 {
      cnt -= 1
      fast = fast?.next
    }

    // 끝에 갔는데 fast가 없으면 head가 없다는 뜻
    if fast == nil { return head?.next }

    // slow starts
    while slow != nil, fast != nil {
      // fast의 다음이 없으면 link를 끊고, slow의 next에 slow의 2개 건너뛴 노드를 심는다.
      if fast?.next == nil { slow?.next = slow?.next?.next }
      slow = slow?.next
      fast = fast?.next
    }

    return head
  }
}

// class ListNode {
//   public var val: Int
//   public var next: ListNode?
//   public init() { self.val = 0; self.next = nil; }
//   public init(_ val: Int) { self.val = val; self.next = nil; }
//   public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }