
import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    if head == nil {
        return true // false if list empty
    }
    if head?.next == nil {
        return true // only 1 node
    }
    
    var slow: ListNode? = head
    var fast: ListNode? = head
    
    while (fast != nil || fast?.next != nil) {
        fast = fast?.next?.next
        slow = slow?.next
    }
    
    fast = reverseList(slow)
    slow = head
    
    while (fast != nil) {
        if slow?.val != fast?.val {
            return false
        }
        slow = slow?.next
        fast  = fast?.next
    }
    return true
}


private func reverseList(_ node: ListNode?) -> ListNode? {
    
    if node == nil {
        return nil
    }
    
    if node?.next == nil {
        return node
    }
    
    var current: ListNode?  = node
    var prev: ListNode?
    var next: ListNode?
    
    while (current != nil) {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}
