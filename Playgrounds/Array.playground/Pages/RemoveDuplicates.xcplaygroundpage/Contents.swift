//: [Previous](@previous)

import Foundation


// O(n) time complexity, O(1) space
func removeDuplicates(_ nums: inout [Int]) -> Int {
    let count = nums.count
    if count <= 1 {
        return count
    }
    var i = 0
    for j in 1..<count  {
        if nums[i] != nums[j] {
            i += 1
            nums[i] = nums[j]
        }
    }
    
    return i + 1
}


var a = [1,1,2]
let count = removeDuplicates(&a)
//print(a)


