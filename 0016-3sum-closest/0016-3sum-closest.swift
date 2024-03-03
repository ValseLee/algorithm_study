class Solution {
  func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    // -4 -1 1 2
    var sorted = nums.sorted()
    var closest = 0
    var possibleDiff = Int.max
    var index = 0

    while index < sorted.count - 2 {
      var left = index + 1
      var right = sorted.count - 1

      while left < right {
        let sum = sorted[index] + sorted[left] + sorted[right]

        if sum == target { return sum }

        if sum < target { left += 1 }
        else if sum > target { right -= 1 }
      
        let diff = abs(sum - target)
        if diff < possibleDiff {
          possibleDiff = diff
          closest = sum
        }
      }

      index += 1
    }

    return closest
  }
}