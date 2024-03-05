class Solution {
  func moveZeroes(_ nums: inout [Int]) {
    var l = 0, r = nums.count - 1

    while l < r {
      if nums[l] == 0 {
        nums.append(0)
        nums.remove(at: l)
        r -= 1
      } else {
        l += 1
      }
    }
  }
}