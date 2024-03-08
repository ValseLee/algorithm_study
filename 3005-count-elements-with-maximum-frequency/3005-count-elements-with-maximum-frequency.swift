class Solution {
  func maxFrequencyElements(_ nums: [Int]) -> Int {
    // 가장 많이 등장했던 숫자들의 횟수 기록
    // 그 등장 횟수의 총합 리턴
    var dict = [Int: Int]()
    var res = 0

    for num in nums {
      if let val = dict[num] {
        dict[num] = val + 1
      } else {
        dict[num] = 1
      }
    }

    var maxFrequency = dict.values.max()

    for val in dict.values {
      if val == maxFrequency {
        res += val
      }
    }

    return res
  }
}