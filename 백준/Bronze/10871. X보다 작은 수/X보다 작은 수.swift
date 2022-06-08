import Foundation

let line = readLine()!
let arr1 = line.components(separatedBy: " ")
let line2 = readLine()!
let arr2 = line2.components(separatedBy: " ")
var answer: [Int] = []

for i in 0 ... (Int(arr1[0])! - 1) {
    if Int(arr1[1])! > Int(arr2[i])! {
        answer.append(Int(arr2[i])!)
    }
}

for i in 0 ... answer.count - 1 {
    print(answer[i], terminator: " ")
}