//: [Previous](@previous)

import Foundation

// let a = -1,-2,-3,-4

// sorted = -15,-10,3,4, 7
public func maximumProductOfThree(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    A.sort()
    let count = A.count
    
    // if last element is negative, pick the last 3
    if A[count - 1] < 0 {
        return A[count - 1] * A[count - 2] * A[count - 3]
    } else  if A[count - 2] < 0 || A[count - 3] < 0  {
        return A[0] * A[1] * A[count - 1]
    }  else {
        let maxNegativeProduct = A[0] * A[1]
        let minPostiveProduct = A[count - 2] * A[count - 3]
        if maxNegativeProduct > minPostiveProduct {
            return maxNegativeProduct * A[count - 1]
        }
        else {
            return A[count - 1] * A[count - 2] * A[count - 3]
        }
    }
    
}
