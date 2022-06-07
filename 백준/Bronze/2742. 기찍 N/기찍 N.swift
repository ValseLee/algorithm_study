import Foundation

let x = Int(readLine()!)!

func answerPrint(_: Int) {
    for i in stride(from: x, to: 0, by: -1) {
        print(i)
    }
}

answerPrint(x)