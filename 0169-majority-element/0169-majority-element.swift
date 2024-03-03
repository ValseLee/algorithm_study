class Solution {
  // 5할 최빈값
  func majorityElement(_ nums: [Int]) -> Int {
    nums.sorted()[nums.count / 2]
  }
}