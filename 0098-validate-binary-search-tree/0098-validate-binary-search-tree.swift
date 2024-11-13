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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validate(root,nil,nil)
    }

    func validate(_ node: TreeNode?, _ low: Int?, _ high: Int?) -> Bool {
        guard let node = node else {
            return true
        }
        if let low = low, node.val <= low {
            return false
        }
        if let high = high, node.val >= high {
            return false
        }
        return validate(node.left, low, node.val) && validate(node.right, node.val, high)
}
}
