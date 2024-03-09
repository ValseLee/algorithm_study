class Solution {
  var memo = [Int: Int]()
  func tribonacci(_ n: Int) -> Int {
    return fib(n)
  }

  func fib(_ n: Int) -> Int {
    if let val = memo[n] { return val }
    if n == 0 { return 0 }
    if n <= 2 { return 1 }
    let sum = fib(n - 1) + fib(n - 2) + fib(n - 3)
    memo[n] = sum
    return sum
  }
}