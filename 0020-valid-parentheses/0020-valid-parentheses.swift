class Solution {
  func isValid(_ s: String) -> Bool {
    var arr = Array(s)
    var queue = [Character]()

    for i in arr {
      if i == "(" || i == "{" || i == "[" { queue.append(i) }
      if i == ")" {
        if
          let last = queue.last,
          last == "(",
          let idx = queue.lastIndex(of: "(") {
            queue.remove(at: idx)
          } else { return false }
      }
      if i == "]" {
        if
          let last = queue.last,
          last == "[",
          let idx = queue.lastIndex(of: "[") {
            queue.remove(at: idx)
        } else { return false }
      }
      if i == "}" {
        if
          let last = queue.last,
          last == "{",
          let idx = queue.lastIndex(of: "{") {
            queue.remove(at: idx)
        } else { return false }
      }
    }
    
    return queue.isEmpty
  }
}
