import Foundation

let x = Int(readLine()!)!
var answer: Int = 0

func sumAnswer(_ num: Int) {
    for i in 1 ... num {
        answer += i
    }
    print(answer)
}

sumAnswer(x)