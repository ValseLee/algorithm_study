/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution: GuessGame {
  func guessNumber(_ n: Int) -> Int {
    var l = 1, r = n

    while l <= r {
      let mid = l + (r-l) / 2

      if guess(mid) > 0 {
        l = mid + 1
      } else if guess(mid) < 0 {
        r = mid - 1
      } else { return mid }
    }

    return -1
  }
}