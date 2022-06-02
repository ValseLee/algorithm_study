import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for j in 1...b {
    for i in 1...a {
       print("*",terminator:"")    
    }
    print()
}

