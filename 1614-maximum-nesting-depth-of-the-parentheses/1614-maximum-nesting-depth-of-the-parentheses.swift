class Solution {
  func maxDepth(_ s: String) -> Int {
    var counter = 0
    var res = 0

    for char in s {
        if char == "(" {
            counter += 1
        } else if char == ")" {
            counter -= 1
        }

        res = max(res, counter)
    }

    return res
  }
}