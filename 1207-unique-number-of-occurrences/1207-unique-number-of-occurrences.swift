class Solution {
  func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict = [Int: Int]()

    for num in arr {
      if let val = dict[num] {
        dict[num] = val + 1
      } else {
        dict[num] = 1
      }
    }

    return Set(dict.values).count == dict.values.count
  }
}