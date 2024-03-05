class Solution {
  func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var first = Array(word1)
    var second = Array(word2)
    var res = ""

    if first.count < second.count {
      for i in 0..<first.count {
        res += String(first[i])
        res += String(second[i])
      }
      for j in first.count..<second.count {
        res += String(second[j])
      }

    } else if first.count > second.count {
      for i in 0..<second.count {
        res += String(first[i])
        res += String(second[i])
      }
      for j in second.count..<first.count {
        res += String(first[j])
      }

    } else {
      for i in 0..<first.count {
        res += String(first[i])
        res += String(second[i])
      }
    }

    return res
  }
}