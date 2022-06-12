import Foundation

var arr: [Int] = []
var cnt = 0

while true {
    let a = Int(readLine()!)!
    arr.append(a)
    cnt += 1
    if cnt == 9 {
        print(arr.max()!, arr.firstIndex(of: arr.max()!)! + 1)
        break
    }
}