//: [Previous](@previous)

import Foundation

// Using Sorting

var array = [1,2,3,3]

let distinct = countDistinct(&array)
func countDistinct(_ A: inout [Int]) -> Int {
    guard A.count > 1 else { return A.count }
  
    A.sort()
    var distinct = 0
    for i in 0..<A.count {
        if i+1 != A.count && A[i] == A[i+1] {} else {
            distinct += 1
        }
    }
    return distinct
}

let count = countDistinctUsingSet(&array)
func countDistinctUsingSet(_ A: inout [Int]) -> Int {
    return Set(A).count
}



