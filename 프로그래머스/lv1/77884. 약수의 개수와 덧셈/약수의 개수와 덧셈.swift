import Foundation

func solution(_ leftNum: Int, _ rightNum: Int) -> Int {
    var modulo = 0
    var sum = 0
    for i in leftNum ... rightNum {
        for j in 1 ... i {
            if i % j == 0 {
                modulo += 1
            }
        }
        if modulo % 2 == 0 {
            sum += i
        } else {
            sum += -i
        }
        modulo = 0
    }
    return sum
}