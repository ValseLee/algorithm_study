import Foundation
func solution(_ n: Int, _ lost: [Int], _ more: [Int]) -> Int {
    var borrow = more.filter { !lost.contains($0) }
    var losted = lost.filter { !more.contains($0) }
    var tmp = [[(Int, Int)]]()
    var answer = 0
    

    for i in losted {
        tmp.append(borrow.map { ($0, $0 - i) }.filter { -1 ... 1 ~= $0.1 })
    }
    
    var canBorrow = Set(tmp.flatMap { $0 }.map { $0.0 }).count

    return n - losted.count + canBorrow > n
        ? n
        : n - losted.count + canBorrow
}