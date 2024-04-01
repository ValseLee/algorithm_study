class Solution {
  func lengthOfLastWord(_ s: String) -> Int {
    let trimmed = s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    var res = 0
    for char in trimmed {
      res += 1
      if char == " " {
        res = 0
      }
    }

    return res
  }
}