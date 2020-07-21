//: [Previous](@previous)

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
     if (head == nil) {
         return head
     }
     var current = head
     while current?.val == val {
         current = current?.next
     }
     let start = current
     var next = current?.next
     while (next != nil) {
         while next?.val == val {
             next = next?.next
         }
         current?.next = next
         current = current?.next
         next = current?.next
     }
     return start
 }
