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
}
