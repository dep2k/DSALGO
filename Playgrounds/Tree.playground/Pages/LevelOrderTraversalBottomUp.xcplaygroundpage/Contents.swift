//: [Previous](@previous)

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
    var levels = [[Int]]()
    var levelNodes = [Int]()
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        for i in stride (from: height(root), through: 1,  by: -1) {
            levelNodes.removeAll()
            levels.append(getLevelNodes(root, i))
        }
        return levels
    }

    func getLevelNodes(_ node: TreeNode?, _ level: Int) -> [Int] {
        guard let node = node else { return levelNodes }
        if (level == 1) {
            levelNodes.append(node.val)
        } else {
            getLevelNodes(node.left, level - 1)
            getLevelNodes(node.right, level - 1)
        }
        return levelNodes
    }
    
    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        return max(1 + height(root.left), 1 + height(root.right))
    }
}
