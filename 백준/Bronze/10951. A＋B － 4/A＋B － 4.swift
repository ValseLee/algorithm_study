import Foundation

var ans: [Int] = []
while let input = readLine() {
    let arr = input.components(separatedBy: " ")
    ans.append(Int(arr[0])! + Int(arr[1])!)
}

for i in 0 ... ans.count - 1 {
    print(ans[i])
}