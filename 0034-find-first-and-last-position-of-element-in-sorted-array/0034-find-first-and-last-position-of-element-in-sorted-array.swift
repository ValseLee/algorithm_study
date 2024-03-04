class Solution {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var start = -1
    var end = -1

    for i in 0..<nums.count {
      if nums[i] == target {
        if start == -1 { start = i }
        end = i
      }
    }

    return [start, end]
  }
}

