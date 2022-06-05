import Foundation

let x = Int(readLine()!)!
var ans: [Int] = []

for _ in 1 ... x {
    let line = readLine()!
    let arr = line.components(separatedBy: " ")
    ans.append(Int(arr[0])! + Int(arr[1])!)
}

for i in 0 ... (x - 1) {
    print(ans[i])
}