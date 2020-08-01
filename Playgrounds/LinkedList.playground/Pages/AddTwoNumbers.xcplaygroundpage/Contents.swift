func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil && l2 == nil { return nil }
    if l1 == nil { return l2 }
    if l2 == nil { return l1 }
    
    var h1 = l1
    var h2 = l2
    var sum = 0
    var carry = 0
    
    var result: ListNode?
    var head: ListNode?
    while (h1 != nil && h2 != nil) {
        sum = h1!.val + h2!.val + carry
        carry = sum >= 10 ? 1 : 0
        if (result == nil) {
            result = ListNode(sum % 10)
            head = result
        } else {
            let nextNode = ListNode(sum % 10)
            result!.next = nextNode
            result = result!.next
        }
        h1 = h1!.next
        h2 = h2!.next
    }
    if (h1 == nil && h2 != nil) {
        while (h2 != nil) {
           sum = h2!.val + carry
            carry = sum >= 10 ? 1 : 0
            let nextNode = ListNode(sum % 10)
            result!.next = nextNode
            result = result!.next
            h2 = h2!.next
        }
    } else if (h2 == nil && h1 != nil) {
        while (h1 != nil) {
            sum = h1!.val + carry
            carry = sum >= 10 ? 1 : 0
            let nextNode = ListNode(sum % 10)
            result!.next = nextNode
            result = result!.next
            h1 = h1!.next
        }
    }
    
    if carry == 1 {
        let nextNode = ListNode(1)
        result!.next = nextNode
    }
    
    return head
}
