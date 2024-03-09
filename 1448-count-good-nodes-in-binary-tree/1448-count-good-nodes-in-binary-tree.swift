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
  // head is always good
  var result = 1

  func goodNodes(_ root: TreeNode?) -> Int {
    if root?.left == nil, root?.right == nil { return 1 }
    guard let root else { return 0 }
    var maxVal = root.val

    dfs(root.left, maxVal)
    dfs(root.right, maxVal)
    return result
  }

  func dfs(_ root: TreeNode?, _ maxVal: Int) {
    guard let root else { return }
    var maxVal = maxVal
    if root.val >= maxVal { 
        result += 1
        maxVal = root.val
      }

    dfs(root.left, maxVal)
    dfs(root.right, maxVal)
  }
}