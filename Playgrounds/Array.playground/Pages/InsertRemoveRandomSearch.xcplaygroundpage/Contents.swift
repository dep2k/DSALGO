//: [Previous](@previous)

import Foundation


class RandomizedSet {

    var array = [Int]()
    var dict: [Int: Int] = [Int:Int]()
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        if let _ = dict[val] {
            return false
        }
        array.append(val)
        dict[val] = array.count - 1
        print(array)
        return true
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        guard array.count > 0, let index = dict[val] else { return false }
        array.swapAt(index, array.count - 1)
        dict[array[index]] = index
        array.removeLast()
        dict.removeValue(forKey: val)
        print(array)
        return true
   
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        guard array.count > 0 else { return -1 }
        print(array)
        let random = Int.random(in: 0..<array.count)
        return array[random]
    }
}


let set = RandomizedSet()
//set.insert(3)
//set.remove(3)
//set.remove(0)
//set.insert(3)
//set.getRandom()
//set.remove(0)

//set.insert(0)
//set.insert(1)
//set.remove(0)
//set.insert(2)
//set.remove(1)
//set.getRandom()

set.remove(0)
set.remove(0)
set.insert(0)
set.getRandom()
set.remove(0)
set.insert(0)
