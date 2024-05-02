class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var res = 0
        var maxed = 0
        for i in gain {
          res += i
          maxed = max(maxed, res)
        }

        return maxed
    }
}