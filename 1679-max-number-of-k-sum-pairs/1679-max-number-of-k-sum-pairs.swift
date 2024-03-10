class Solution {
  func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    if nums.count == 0 { return 0 }
    var nums = nums.sorted()
    var res = 0
    var left = 0, right = nums.count - 1 

    while left < right {
      if nums[left] + nums[right] == k {
        res += 1
        left += 1
        right -= 1
      } else if nums[left] + nums[right] < k {
        left += 1
      } else {
        right -= 1
      }
    }

    return res
  }

  // func dp(
  //   _ left: Int,
  //   _ right: Int,
  //   _ res: inout Int
  // ) {
  //   if nums.isEmpty || right >= nums.count {
  //     return
  //   } else {
  //     if nums[left] >= target { 
  //       nums.remove(at: left)
  //       dp(left, left + 1, &res)
  //     } else if nums[left] + nums[right] == target {
  //       nums.remove(at: left)
  //       nums.remove(at: right - 1)
  //       res += 1

  //       dp(left, left + 1, &res)
  //     } else {
  //       if right == nums.count - 1 {
  //         nums.remove(at: left)
  //         dp(left, left + 1, &res)
  //       } else if right < nums.count {
  //         dp(left, right + 1, &res)
  //       }
  //     }
  //   }
  // }
}