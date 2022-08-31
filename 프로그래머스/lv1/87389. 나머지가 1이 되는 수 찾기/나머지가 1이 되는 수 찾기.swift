import Foundation

func solution(_ n: Int) -> Int {
    var num = 1
    while true {
        if (n % num) == 1 {
            return num
        } else {
            num += 1
        }
    }
}