class Solution {
    func isPalindrome(_ x: Int) -> Bool {
      var target = x
      var nums = [Int]()
      if x < 0 { return false }

      while target > 0 {
        var num = target % 10 
        var next = target / 10
        target = next
        nums.append(num)
      }

      if nums.reversed() == nums { return true }
      return false
    }
}