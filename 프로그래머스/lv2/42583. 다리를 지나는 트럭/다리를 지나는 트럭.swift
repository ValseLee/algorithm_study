import Foundation

func solution(_ len: Int, _ weight: Int, _ trucksArr: [Int]) -> Int {
    var trucks = trucksArr
    var passing = Array(repeating: 0, count: len)
    var availableWeight = 0
    var time = 0

    while !passing.isEmpty {
        time += 1
        availableWeight -= passing.removeFirst()

        if let truckWeight = trucks.first {
            if availableWeight + truckWeight <= weight {
                availableWeight += truckWeight
                passing.append(trucks.removeFirst())
            } else {
                passing.append(0)
            }
        }
    }

    return time
}