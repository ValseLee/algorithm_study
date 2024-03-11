class Solution {
  func customSortString(_ order: String, _ s: String) -> String {
    if order == s { return s }
    var res = [Character]()
    var dict = [Character: Int]()
    var order = Array(order)
    
    for target in s { dict[target, default: 0] += 1 }
    for char in order where dict[char] != nil {
      res += Array(repeating: char, count: dict[char]!)
      dict[char] = nil
    }

    for (k,v) in dict {
      res += Array(repeating: k, count: v)
    }

    return String(res)
  }
}