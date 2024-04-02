class Solution {
  func isIsomorphic(_ s: String, _ t: String) -> Bool {
    // add, egg
    // a = e, d = g, d = g
    // e = a, g = d, g = d

    // foo, bar
    // f = b, b = f
    // o = a, a = o
    // o = a, r = o (x)
    var dict1 = [Character: Character]()
    var dict2 = [Character: Character]()
    var arr1 = Array(s), arr2 = Array(t)

    for i in 0..<s.count {
      let sChar = arr1[i]
      let tChar = arr2[i]
      if (dict1[sChar] != nil && dict1[sChar] != tChar)
      || (dict2[tChar] != nil && dict2[tChar] != sChar) {
          return false
      }
      
      dict1[sChar] = tChar
      dict2[tChar] = sChar
    }
    return true
  }
}