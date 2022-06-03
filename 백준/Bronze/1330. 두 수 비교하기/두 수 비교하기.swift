import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
let a = Int(lineArray[0])!
let b = Int(lineArray[1])!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
