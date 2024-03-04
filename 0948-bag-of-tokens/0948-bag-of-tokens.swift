class Solution {
  func bagOfTokensScore(_ tokens: [Int], _ currentPower: Int) -> Int {
    var sorted = tokens.sorted()
    var score = 0
    var maxScore = 0
    
    var power = currentPower
    var l = 0
    var r = sorted.count - 1

    while l <= r {
      if power >= sorted[l] {
        power -= sorted[l]
        score += 1
        maxScore = max(maxScore, score)
        l += 1
      } else if score > 0 {
        power += sorted[r]
        score -= 1
        r -= 1
      } else { break }
    }

    return maxScore
  }
}