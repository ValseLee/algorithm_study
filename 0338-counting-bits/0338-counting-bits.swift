class Solution {
  func countBits(_ n: Int) -> [Int] {
    guard n > 0 else { return [0] }
    var res = Array(repeating: 0, count: n + 1)
    for n in 1...n {
        res[n] = (n & 1) + res[n>>1]
    }
    
    return res
  }
}