import Foundation

let x = Int(readLine()!)!
var x2 = x
var cnt: Int = 0

repeat {
    let l = x2 / 10
    let r = x2 % 10
    let sum = l + r

    x2 = r * 10 + sum % 10
    cnt += 1
} while x != x2

print(cnt)
