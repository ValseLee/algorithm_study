class Solution {
  func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    if str1 + str2 != str2 + str1 { return "" }
    // 공통 문자열을 기준으로 나뉠 수 있다. == 이 두 문자열의 총 갯수가 배수 관계다
    var firstCount = str1.count
    var secondCount = str2.count

    while firstCount != 0 {
      let tmp = firstCount
      firstCount = secondCount % tmp
      secondCount = tmp
    }

    return String(str2.prefix(secondCount))
  }
}