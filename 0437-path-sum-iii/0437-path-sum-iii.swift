/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
  var result = 0
  var target = 0

  func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
    guard let root else { return 0 }
    target = targetSum
    startFrom(root)
    return result
  }

  func startFrom(_ root: TreeNode?) {
    guard let root else { return }
    dfs(root, 0)
    startFrom(root.left)
    startFrom(root.right)
  }

  func dfs(_ root: TreeNode?, _ current: Int) {
    guard let root else { return }
    let currentSum = current + root.val
    if currentSum == target { result += 1 }

    dfs(root.left, currentSum)
    dfs(root.right, currentSum)
  }
}