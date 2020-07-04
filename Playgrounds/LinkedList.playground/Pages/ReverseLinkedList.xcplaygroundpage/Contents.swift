//: [Previous](@previous)

import Foundation

class Solution {
    var prev: ListNode?
    var next: ListNode?
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        while (current != nil) {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        current = prev
        return current
    }
    
    // 1->2->3->4->5
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil}
        
        if (head.next == nil) {
            return head
        }
        var reverseHead = reverseList(head.next)
        head.next?.next = head
        head.next = nil
        return reverseHead
    }
}
