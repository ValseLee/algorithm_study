class Solution {
  func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var res = [Bool]()
    var maxCandy = candies.max()!
    for i in 0..<candies.count {
      if candies[i] + extraCandies >= maxCandy {
        res.append(true)
      } else {
        res.append(false)
      }
    }
    return res
  }
}