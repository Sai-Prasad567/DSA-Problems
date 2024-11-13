/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    var dict : [Int:Node] = [:]
    func connect(_ root: Node?) -> Node? {
        return connect(root,0)
    }

    func connect(_ root: Node?, _ level: Int) -> Node? {
        if root == nil {
            return root
        }
        connect(root?.right,level+1)
        connect(root?.left,level+1)
        root?.next = dict[level]
        dict[level] = root
        return root
    }
}