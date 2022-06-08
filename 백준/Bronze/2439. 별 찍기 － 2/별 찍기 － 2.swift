import Foundation
let x = Int(readLine()!)!

func answerPrint(_ x: Int) {
    for i in 1 ... x {
        for _ in stride(from: x, to: i, by: -1) {
            print(" ", terminator: "")
        }
        for _ in stride(from: 0, to: i, by: 1) {
            print("*", terminator: "")
        }
        print()
    }
}

answerPrint(x)