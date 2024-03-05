class Solution {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count <= 2 { return nums.count }
    var idx = 1
    var cnt = 1

    for i in 1..<nums.count {
      if nums[i] == nums[i - 1] { cnt += 1 }
      else { cnt = 1 }

      if cnt <= 2 {
        nums[idx] = nums[i]
        idx += 1
      }
    }

    return idx
  }
}