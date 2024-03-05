class Solution {
  func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var cnt = n
    var prev = 0

    for i in 0..<flowerbed.count {
      let current = flowerbed[i]
      if current == 0 { // 지금 0
        if prev == 0 { // 이전도 0
          if i == flowerbed.count - 1 { // 만약 마지막 0이었으면
            cnt -= 1
            prev = 1
          } else if flowerbed[i+1] == 0 { // 만약 그 다음도 0이면
            cnt -= 1
            prev = 1
          }
        } else { // 이전이 1이면, 심지 못함 -> 이전을 0으로 업데이트
          prev = 0
        }
      } else {
        prev = 1
      }
    }
    return cnt <= 0 ? true : false
  }
}