import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
var hour = Int(lineArray[0])!
var minute = Int(lineArray[1])!

let cookTime = Int(readLine()!)!
let plusHour = cookTime / 60
let plusMinute = cookTime % 60

if plusMinute + minute >= 60 {
    hour += (1 + plusHour)
    minute = plusMinute + minute - 60
    if hour >= 24 {
        hour -= 24
        print(hour, minute)
    } else {
        print(hour, minute)
    }

} else if plusMinute + minute <= 60 {
    hour += plusHour
    minute += plusMinute
    if hour >= 24 {
        hour -= 24
        print(hour, minute)
    } else {
        print(hour, minute)
    }
}
