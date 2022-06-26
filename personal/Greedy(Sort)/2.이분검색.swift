import Foundation

@discardableResult
func solution(_ num: [Int], _ numArray: [Int]) -> Int {
    // 내가 찾고자 하는 값의 위치를 중앙 포인터로부터 왼쪽에 있는지, 오른쪽에 있는지를 판별하고
    // 탐색 시간을 줄여주는 알고리즘
    let arr = numArray
    let array = arr.sorted()

    var leftPointer = 0
    var rightPointer = arr.count - 1
    var midPointer = 0
    var answer = 0

    while leftPointer <= rightPointer {
        midPointer = (leftPointer + rightPointer) / 2
        if array[midPointer] < num[1] {
            leftPointer = midPointer + 1
        } else if array[midPointer] > num[1] {
            rightPointer = midPointer - 1
        } else {
            answer = midPointer + 1
            print(answer)
            break
        }
    }

    return answer
}

solution([8, 32], [23, 87, 65, 12, 57, 32, 99, 81]) // 3
