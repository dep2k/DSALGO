//: [Previous](@previous)

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
     var dict = [Int: Bool]()
     for value in nums {
         if let _ = dict[value] {
             return true
         }
         dict[value] = true
     }
     return false
 }

func containsDuplicateSet(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}
