import Foundation
let x = Int(readLine()!)!
let line: [Int] = readLine()!.split(separator: " ").map { (string: String.SubSequence) -> Int in Int(string)! }

print(line.min()!, line.max()!)