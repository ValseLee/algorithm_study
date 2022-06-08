import Foundation

var ans: [Int] = []
var flag: Bool = true

while flag {
    let line = readLine()!
    let arr = line.components(separatedBy: " ")
    if Int(arr[0])! != 0 || Int(arr[1])! != 0 {
        ans.append(Int(arr[0])! + Int(arr[1])!)
    } else if Int(arr[0])! == 0, Int(arr[1])! == 0 {
        for i in 0 ... ans.count - 1 {
            print(ans[i])
        }
        flag = false
    }
}