class Solution {
  func findDuplicates(_ nums: [Int]) -> [Int] {
    var dict = [Int:Int]()
    var res = [Int]()
    for num in nums {
      if let val = dict[num] {
        res.append(val)
      } else {
        dict[num] = num
      }
    }
    return res
  }
}