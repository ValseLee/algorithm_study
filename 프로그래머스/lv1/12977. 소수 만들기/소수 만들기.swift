import Foundation

func solution(_ arr: [Int]) -> Int {
    var answer = 0
    
    func isPrime(sum: Int) -> Bool {
        guard sum > 2 else {
            return sum == 2 ? true : false
        }

        for i in 2 ... Int(sqrt(Double(sum))) {
            if sum % i == 0 {
                return false
            }
        }
        return true
    }

    for i in 0 ..< arr.count - 2 {
        for j in (i + 1) ..< arr.count {
            for k in (j + 1) ..< arr.count {
                if isPrime(sum: arr[i] + arr[j] + arr[k]) {
                    answer += 1
                }
            }
        }
    }

    return answer
}