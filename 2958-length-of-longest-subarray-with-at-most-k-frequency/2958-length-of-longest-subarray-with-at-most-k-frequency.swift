class Solution {
  // 창문
  func maxSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
    if nums.count == 1 { return 1 }
    var pattern = [Int: Int]()
    var res = 1
    var l = 0

    for h in 0..<nums.count {
      pattern[nums[h], default: 0] += 1
      // 허용된 갯수보다 많이 나오면 l을 옮겨주자
      while pattern[nums[h], default: 0] > k {
        pattern[nums[l], default: 0] -= 1
        l += 1
      }
      res = max(res, h - l + 1)
    }
    
    return res
  }
}