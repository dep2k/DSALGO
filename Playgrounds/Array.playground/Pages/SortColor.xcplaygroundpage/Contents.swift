//: [Previous](@previous)

import Foundation

func sortColors(_ nums: inout [Int]) {
    var low = 0
    var mid = 0
    var high = nums.count - 1
    while mid <= high {
        if nums[mid] == 0 {
            nums.swapAt(low, mid)
            low += 1
            mid += 1
        } else if nums[mid] == 1 {
            mid += 1
        } else {
            nums.swapAt(high, mid)
            high -= 1
        }
    }
}

//var a = [2,0,2,1,1,0]
var a = [1,2,0]
sortColors(&a)

