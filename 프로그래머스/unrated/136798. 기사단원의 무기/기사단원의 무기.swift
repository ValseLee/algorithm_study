import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    let arr = Array(1 ... number)

    func check(number: Int) -> Int {
        var count = 0
        let sqrtNum = Int(sqrt(Double(number)))

        for i in 1 ... sqrtNum {
            if number % i == 0 {
                count += 1
                if number / i != i {
                    count += 1
                }
            }
        }
        return count
    }

    result = arr.reduce(result) { lhs, rhs in
        if lhs == 0 {
            return 1
        } else {
            // 약수 갯수
            let checked = check(number: rhs)
            let num = checked > limit ? power : checked
            return lhs + num
        }
    }

    return result
}