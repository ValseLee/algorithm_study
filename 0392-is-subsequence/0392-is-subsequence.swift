class Solution {
  func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.isEmpty { return true }
    var res = ""
    var sub = Array(s)
    var subIdx = 0

    var mod = Array(t)

    var l = 0

    while l <= mod.count - 1 {
      if sub[subIdx] == mod[l], subIdx < sub.count - 1 {
        res += String(mod[l])
        subIdx += 1
        l += 1
      } else if sub[subIdx] != mod[l] {
        l += 1
      } else if subIdx == sub.count - 1 {
        if sub[subIdx] == mod[l] { 
          res += String(mod[l])
          l += 1
        } else {
          l += 1
        }
      }
    }

    return res == s
  }
}