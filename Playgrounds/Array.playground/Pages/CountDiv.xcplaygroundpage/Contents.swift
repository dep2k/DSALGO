//: [Previous](@previous)

import Foundation


public func countDiv(_ A : Int, _ B : Int, _ K : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
   
    if A % K == 0 {
        return 1 + B/K - A/K
    }
    return B/K - A/K
}

countDiv(11, 16, 1)
