import UIKit
//
//public class Node {
//
//var value: String
//    init(value: String) {
//        self.value = value
//    }
//var next: Node?
//weak var previous: Node?
//}
//public class LinkedList {
//    fileprivate var head: Node?
//    private var tail: Node?
//
//    public var isEmpty: Bool {
//        return head == nil
//    }
//
//    public var first: Node? {
//        return head
//    }
//
//    public var last: Node? {
//        return tail
//    }
//
//    public func append(value: String) {
//        // 1
//        let newNode = Node(value: value)
//        // 2
//        if let tailNode = tail {
//            newNode.previous = tailNode
//            tailNode.next = newNode
//        }
//            // 3
//        else {
//            head = newNode
//        }
//        // 4
//        tail = newNode
//    }
//
//}
//
//let dogBreeds = LinkedList()
//dogBreeds.append(value: "Labrador")
//dogBreeds.append(value: "Bulldog")
//dogBreeds.append(value: "Beagle")
//dogBreeds.append(value: "Husky")
//print(dogBreeds)

//class Node {
//    let value : Int
//    var next : Node?
//
//    init(value: Int, next: Node?) {
//        self.value = value
//        self.next = next
//    }
//}
//
//let threeNode = Node(value:3, next: nil)
//let twoNode = Node(value:2, next: threeNode)
//let oneNode = Node(value: 1, next: twoNode)
//
//func printList(head: Node?) {
//    print("printing out list of nodes")
//    var currentNode = head
//    while currentNode != nil {
//        print(currentNode?.value ?? -1)
//        currentNode  = currentNode?.next
//    }
//}
//printList(head: oneNode)
//
//// 1->2->3->nil
////nil<-1->2->3->nil
////nil<-1<-2<-3
//
//func reverseList (head: Node?) -> Node? {
//
//    var currentNode = head
//    var next : Node?
//    var prev : Node?
//    while currentNode != nil {
//        next = currentNode?.next
//        currentNode?.next = prev
//        prev = currentNode
//        currentNode = next
//    }
//
//    return prev
//}
//
//let myReversedList = reverseList(head: oneNode)
//
//printList(head: myReversedList)

//public class Node {
//
//var value: Int
//var next : Node?
//       init(value: Int) {
//        self.value = value
//       }
//class SingleLinkedList<T> {
//
//        var head: Node? // head is nil when list is empty
//
//        public var isEmpty: Bool {
//            return head == nil
//        }
//
//        public var first: Node? {
//            return head
//        }
//public func append(value: Int) {
//        let newNode = Node(value: value)
//        if var h = head {
//            while h.next != nil {
//                h = h.next!
//            }
//            h.next = newNode
//
//        } else {
//            head = newNode
//        }
//    }
//
//func insert(data : Int, at position : Int) {
//    let newNode = Node(value: data)
//
//    if (position == 0) {
//        newNode.next = head
//        head = newNode
//    }
//    else {
//        var previous = head
//        var current = head
//        for _ in 0..<position {
//            previous = current
//            current = current?.next
//        }
//
//        newNode.next = previous?.next
//        previous?.next = newNode
//    }
//}
//}
//}


class Node {
    var info: Int!
    var nextNode: Node?
    init(data:Int){
        self.info = data
        self.nextNode = nil
    }
}
class LinkedList {
    var head: Node?         // head of the locomotive train that serves as the first node
    var length: Int         // store the length of the nodes or elements
    init(){
        self.length = 0
    }
    // insert a node into the list
    func Insert(node: Node){
        if self.head == nil{
            self.head = node
            self.length += 1
            return
        }
        var tempNode = self.head
        while tempNode?.nextNode != nil {
            tempNode = tempNode?.nextNode
        }
        tempNode?.nextNode = node
        self.length += 1
    }
    // remove the first element or node similar to array[0] delete
    func removeAtBeg()-> Node?{
        if self.head == nil { print("UNDERFLOW"); return nil }      // check if the list is empty
        else{
            let tempNode = self.head
            self.head = tempNode?.nextNode
            self.length -= 1
            return tempNode
        }
}
    func removeAtEnd() -> Node? {
        var deletedNode: Node?
        if self.head == nil { print("UNDERFLOW"); return nil }
        if self.head?.nextNode == nil {
            deletedNode = self.head
            self.head = nil
            self.length -= 1
            return deletedNode
        }
        var currentNode = self.head
        var prevNode: Node? = self.head
        while currentNode?.nextNode != nil {
            prevNode = currentNode
            currentNode = currentNode?.nextNode
        }
        deletedNode = prevNode?.nextNode
        prevNode?.nextNode = nil
        self.length -= 1
        return deletedNode
    }
    // delete all the nodes
    func deleteAll() {
        self.head = nil
        self.length = 0
    }
    func getNodes(){
        var currentNode = self.head
        while currentNode != nil {
            // do something with the node
            print(currentNode!.info!)
            currentNode = currentNode?.nextNode
        }
    }
}
var firstNode = Node(data: 1)
var secondNode = Node(data: 2)
var thirdNode = Node(data: 3)
var fourthNode = Node(data: 4)
var fifthdNode = Node(data: 5)
var list = LinkedList()
list.Insert(node: firstNode)
list.removeAtEnd()
// testing if the delete works for only one member
list.Insert(node: secondNode)
list.Insert(node: thirdNode)
list.Insert(node: fourthNode)
list.Insert(node: fifthdNode)
list.length
list.getNodes()
list.removeAtBeg()
list.length
list.getNodes()
list.length
list.getNodes()
