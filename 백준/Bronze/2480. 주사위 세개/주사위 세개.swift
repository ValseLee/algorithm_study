import Foundation

let line = readLine()!
let lineArray = line.components(separatedBy: " ")
let arr = lineArray.sorted()

if arr[0] == arr[1], arr[1] == arr[2] {
    print(10000 + Int(arr[0])! * 1000)
} else if arr[0] != arr[1], arr[1] != arr[2], arr[0] != arr[2] {
    print(100 * Int(arr[2])!)
} else {
    print(1000 + 100 * Int(arr[1])!)
}
