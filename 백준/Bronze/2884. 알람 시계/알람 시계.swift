import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
var hour = Int(lineArray[0])!
var minute = Int(lineArray[1])!

if hour == 0 {
    if minute - 45 < 0 {
        print(23, minute + 15)
    } else if minute - 45 >= 0 {
        print(hour, minute - 45)
    }
} else {
    if minute - 45 < 0 {
        print(hour - 1, minute + 15)
    } else if minute - 45 >= 0 {
        print(hour, minute - 45)
    }
}