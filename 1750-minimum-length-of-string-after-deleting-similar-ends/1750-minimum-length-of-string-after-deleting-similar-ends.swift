class Solution {
  // Two pointer?
  // 같은 원소가 l, r에서 나오면, 같은 원소가 나오는 곳까지 전부 탐색 후 제거
  // sliding window?
  func minimumLength(_ s: String) -> Int {
    var arr = Array(s)

    var l = 0, r = arr.count - 1
    
    while l < r {
      if arr[l] == arr[r] {
        while l + 1 < r, arr[l] == arr[l+1] {
          l += 1
        }

        while l < r - 1, arr[r] == arr[r-1] {
          r -= 1
        }

        l += 1
        r -= 1
      } else { break }
    }

    return r - l + 1
  }
}