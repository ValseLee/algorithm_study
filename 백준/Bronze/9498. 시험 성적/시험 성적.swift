import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
let a = Int(lineArray[0])!
// let b = Int(lineArray[1])!
if a >= 90 {
    print("A")
} else if a >= 80 {
    print("B")
} else if a >= 70 {
    print("C")
} else if a >= 60 {
    print("D")
} else {
    print("F")
}
