import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
let a = Int(lineArray[0])!
if a % 4 == 0, a % 100 != 0 || a % 400 == 0 {
    print("1")
} else {
    print("0")
}
