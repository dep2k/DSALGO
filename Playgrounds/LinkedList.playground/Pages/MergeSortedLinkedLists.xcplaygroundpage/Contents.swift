//: [Previous](@previous)

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// Input: 5->6->7-10-11-12,
// 1->2->5-9

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if  l1 == nil  { return l2 }
        if  l2 == nil  { return l1 }
        
        let head: ListNode? = ListNode(-1)
        var current = head
        
        var p1 = l1
        var p2 = l2
   
        
        while ( p1 != nil && p2 != nil) {
            if (p1!.val <= p2!.val) {
                current?.next = p1
                p1 = p1!.next
            } else if (p2!.val <= p1!.val){
                current?.next = p2
                p2 = p2!.next
            }
            
            current = current?.next
        }
        
        if p2 == nil {
            current?.next = p1
        }
        
        if p1 == nil {
            current?.next = p2
        }

        return head?.next
    }
    
}


