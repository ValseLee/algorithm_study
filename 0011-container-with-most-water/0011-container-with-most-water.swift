class Solution {
  func maxArea(_ height: [Int]) -> Int {
    var l = 0
    var r = height.count - 1
    var sum = 0

    while l < r {
      sum = max(sum, (r - l) * min(height[l], height[r]))
      if height[l] < height[r] {
        l += 1
      } else {
        r -= 1
      }
    }

    return sum
  }
}