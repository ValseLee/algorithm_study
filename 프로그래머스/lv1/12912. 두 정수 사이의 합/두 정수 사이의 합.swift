import Foundation 

func solution(_ a: Int, _ b: Int) -> Int {
    var sum = 0
    if a >= b {
        for num in b ... a {
            sum += num
        }
    } else {
        for num in a ... b {
            sum += num
        }
    }
    return sum
}