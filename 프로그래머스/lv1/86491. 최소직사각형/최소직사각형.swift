import Foundation

func solution(_ arr: [[Int]]) -> Int {
    var w = [Int]()
    var h = [Int]()

    arr.map {
        if $0[0] >= $0[1] {
            w.append($0[0])
            h.append($0[1])
        } else {
            w.append($0[1])
            h.append($0[0])
        }
    }

    return w.max()! * h.max()!
}