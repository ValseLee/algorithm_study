import Foundation
let x = Int(readLine()!)!

func answerPrint(_: Int) {
    var a = 0
    var b = 0
    var arr: [[Int]] = []

    for _ in 1 ... x {
        let line = readLine()!
        let lineArray = line.components(separatedBy: " ")
        a = Int(lineArray[0])!
        b = Int(lineArray[1])!
        arr.append([a, b, a + b])
    }
    for i in 1 ... arr.count {
        print("Case #\(i):", arr[i - 1][0], "+", arr[i - 1][1], "=", arr[i - 1][2])
    }
}

answerPrint(x)
