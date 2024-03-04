class Solution {
  func climbStairs(_ n: Int) -> Int {
    var memo = [Int: Int]()
    return fib(n, &memo)
  }

  func fib(_ n: Int, _ memo: inout [Int: Int]) -> Int {
    if let value = memo[n] { return value }
    if n <= 1 { return 1 }
    memo[n] = fib(n - 2, &memo) + fib(n - 1, &memo)
    return memo[n]!
  }
}