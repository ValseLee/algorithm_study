class Solution {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    // pick 3 to sum 0
    var combination: [[Int]] = []
    var sorted = nums.sorted()
    var index = 0

    while index <= nums.count - 3 {
      var first = sorted[index]
      var left = index + 1
      var right = nums.count - 1

      while left < right {
        let sum = first + sorted[left] + sorted[right]

        if sum == 0 {
          combination.append([first, sorted[left], sorted[right]])
          left += 1
        } else {
          if sum > 0 { right -= 1 }
          else if sum < 0 { left += 1 }
        }
      }

      index += 1
    }

    return Array(Set(combination))
  }
}