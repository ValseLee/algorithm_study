class Solution {
  // 완탐, 창문
  func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
    if k == 0 { return 0 }
    else if nums.count == 1, k > nums[0] { return 1 }
    else if nums.count == 1, k <= nums[0] { return 0 }

    var res = 0
    var low = 0, high = 0
    var sum = 1

    // [10, 5, 2, 6]
    // 10 -> 10, | 10, 5 | 10, 5, 2 |
    while high < nums.count {
      sum *= nums[high]
      if sum < k {
        high += 1
        res += 1
      }

      if sum >= k || high >= nums.count {
        low += 1
        high = low
        sum = 1
      }
    }

    return res
  }
}