class Solution {
  func longestCommonPrefix(_ strs: [String]) -> String {
    guard let target = strs.min() else { return "" }
    var prefixTarget = target

    while !prefixTarget.isEmpty {
      if strs.allSatisfy { $0.hasPrefix(prefixTarget) } { break }

      prefixTarget.removeLast()
    }
    return prefixTarget
  }
}