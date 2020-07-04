//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func hasCycle(_ head: ListNode?) -> Bool {
     guard let head = head, let next = head.next else {  return false }
     
     var fast: ListNode? = next
     var slow: ListNode? = head
     
     while (fast !== slow) {
         if fast == nil || slow == nil {
             return false
         }
         fast = fast?.next?.next
         slow = slow?.next
     }
     return true
 }
