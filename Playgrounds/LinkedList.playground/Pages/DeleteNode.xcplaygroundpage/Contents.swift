

 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }

func deleteNode(_ node: ListNode?) {
       let nextNode = node!.next!
       node!.val = nextNode.val
       node!.next = nextNode.next
}

