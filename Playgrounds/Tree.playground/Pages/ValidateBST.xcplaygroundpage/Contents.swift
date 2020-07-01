
import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    
    func isValidBST(_ root: TreeNode?) -> Bool {
      var prev = Int.min
      return isBSTUtil(root, &prev)
    }
    
    private func isBSTUtil(_ root: TreeNode?, _ prev: inout Int) -> Bool {
         if (root != nil) {
            if (!isBSTUtil(root!.left, &prev)) {
               return false;
            }
            // Allows only distinct valued nodes
            if (root!.val <= prev) {
                return false
            }
            // Initialize prev to current
            prev = root!.val
            return isBSTUtil(root!.right, &prev)
         }
         return true;
    }
}
