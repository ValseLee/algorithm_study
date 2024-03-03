class Solution {
  // 5할 최빈값
  // func majorityElement(_ nums: [Int]) -> Int {
  //   nums.sorted()[nums.count / 2]
  // }

  func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()

    nums.forEach {
      if let val = dict[$0] {
        dict[$0] = val + 1
      } else {
        dict[$0] = 1
      }
    }

    let mid = nums.count / 2
    for key in dict.keys {
      if let val = dict[key], val > mid { return key }
    }

    return 0
  }
}