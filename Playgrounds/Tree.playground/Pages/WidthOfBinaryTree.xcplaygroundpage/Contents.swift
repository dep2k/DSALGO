
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

func widthOfBinaryTree(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    var queue = [(Int, TreeNode)]()
    queue.append((0, root!))
    var maxWidth = 0
    
    while !queue.isEmpty {
        let length = queue.count
        let first = queue.first!.0, last = queue.last!.0
        maxWidth = max(maxWidth, last - first + 1)
        
        for _ in 0..<length {
            let curNode = queue.removeFirst()
            let node = curNode.1
            if let left = node.left {
                queue.append((2 * curNode.0, left))
            }
            if let right = node.right {
                queue.append((2 * curNode.0 + 1, right))
            }
        }
        
        if queue.count == 1 {
            queue[0].0 = 0
        }
    }
    return maxWidth
}
