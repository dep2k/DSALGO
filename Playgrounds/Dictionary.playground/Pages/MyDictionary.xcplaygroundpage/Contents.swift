import UIKit

struct MyDictionary<Key,String> where Key: Hashable {
    
    var array: [[(Key, String)]] = Array(repeating: [], count: 2)
    
    mutating func updateCapacity(_ size: Int) {
        let tempArray = array
        array = Array(repeating: [], count: size)
        
        for tupleArray in tempArray {
            for tuple in tupleArray {
                setValueForKey(key: tuple.0, value: tuple.1)
            }
        }
    }
    
    
    mutating func setValueForKey(key: Key, value: String) {
        let index = getIndex(key: key)
        // replace if the key is present instead of appending
        let nodes = array[index]
     
        var matchingIndex = -1
        for (index, tuple) in nodes.enumerated() {
            if tuple.0 == key {
                matchingIndex = index
            }
        }
        
        if matchingIndex == -1 {
            // append if not present
            array[index].append((key,value))
        } else {
            array[index][matchingIndex] = (key,value)
        }
    }
    
    func getValueForKey(key: Key) -> String? {
        let index = getIndex(key: key)
        let nodes = array[index]
        for node in nodes {
            if node.0 == key {
                return node.1
            }
        }
        return nil
    }
    
    mutating func deleteValueForKey(key: Key) -> Bool {
        let index = getIndex(key: key)
        let nodes = array[index]
        let remainingAfterDelete = nodes.filter { (tuple) -> Bool in
            tuple.0 != key
        }
        if remainingAfterDelete.count == nodes.count {
            return false
        }
        array[index] = remainingAfterDelete
        return true
    }
    
    private func getIndex(key: Key) -> Int {
        // logic to find the index
        let hashValue = key.hashValue
        let index = hashValue % array.count
        return index
    }
}


var  dict = MyDictionary<String,String>()

dict.setValueForKey(key: "key1", value: "Value1")
dict.setValueForKey(key: "key2", value: "Value2")
dict.setValueForKey(key: "key3", value: "Value3")

let value1 = dict.getValueForKey(key: "key1")
let value2 = dict.getValueForKey(key: "key2")
let value3 = dict.getValueForKey(key: "key3")

let isDeleted = dict.deleteValueForKey(key: "key1")
let value1Again = dict.getValueForKey(key: "key1")

dict.setValueForKey(key: "key2", value: "updatedValue")
let updatedValue2 = dict.getValueForKey(key: "key2")

let isDeletedMissingKey = dict.deleteValueForKey(key: "key4")


dict.updateCapacity(4)
dict.setValueForKey(key: "key1", value: "Value1")
dict.setValueForKey(key: "key2", value: "Value2")
dict.setValueForKey(key: "key3", value: "Value3")

let tvalue1 = dict.getValueForKey(key: "key1")
let tvalue2 = dict.getValueForKey(key: "key2")
let tvalue3 = dict.getValueForKey(key: "key3")

let tisDeleted = dict.deleteValueForKey(key: "key1")
let tvalue1Again = dict.getValueForKey(key: "key1")

dict.setValueForKey(key: "key2", value: "updatedValue")
let tupdatedValue2 = dict.getValueForKey(key: "key2")

let tisDeletedMissingKey = dict.deleteValueForKey(key: "key4")

struct Student: Hashable {
    var age: Int
    var name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(age)
        hasher.combine(name)
    }
}


var studentDictionary = MyDictionary<Student, String>()
studentDictionary.setValueForKey(key: Student(age: 11, name: "S1"), value: "Student1")

let sValue = studentDictionary.getValueForKey(key: Student(age: 11, name: "S1"))

