import Foundation

let x = Int(readLine()!)!

func answerPrint(_ x: Int) {
    for i in 1 ... x {
        for _ in 1 ... i {
            print("*", terminator: "")
        }
        print()
    }
}

answerPrint(x)