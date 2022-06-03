import Foundation
let line1 = Int(readLine()!)!
let line2 = Int(readLine()!)!
var a = (line1 * (line2 % 10)) // 1의 자리
var b = (line1 * (line2 % 100 / 10)) // 10의 자리
var c = (line1 * (line2 / 100)) // 100의 자리
var d = (line1 * line2)
print(a)
print(b)
print(c)
print(d)