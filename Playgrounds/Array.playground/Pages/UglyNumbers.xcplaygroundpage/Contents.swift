//: [Previous](@previous)

import Foundation

func nthUglyNumber(_ n: Int) -> Int {
    var i2 = 0
    var i3 = 0
    var i5 = 0
    
    var uglyNumbers = [1]
    var nextMultipleOfTwo = 2 * uglyNumbers[i2]
    var nextMultipleOfThree = 3 * uglyNumbers[i3]
    var nextMultipleOfFive = 5 * uglyNumbers[i5]
    
    for _ in 1..<n {
        let nextUglyNumber = min(nextMultipleOfTwo, nextMultipleOfThree, nextMultipleOfFive)
        uglyNumbers.append(nextUglyNumber)
        
        if nextMultipleOfTwo == nextUglyNumber {
            i2 += 1
            nextMultipleOfTwo  = 2 * uglyNumbers[i2]
        }
        
        if nextMultipleOfThree == nextUglyNumber {
            i3 += 1
            nextMultipleOfThree = 3 * uglyNumbers[i3]
        }
        
        if nextMultipleOfFive == nextUglyNumber {
            i5 += 1
            nextMultipleOfFive = 5 * uglyNumbers[i5]
        }
    }
    return uglyNumbers[n - 1]
}

nthUglyNumber(10)
