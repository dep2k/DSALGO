//: [Previous](@previous)
import Foundation

// 1,2,3,2  ->3
public func maxBiValueLength(_ A : inout [Int]) -> Int {
    var array = [Int]()
    var maxLength = 0
    var maxTillNow = 0
    for value in A {
        if (!array.contains(value)) {
            if (array.count < 2) {
                array.append(value)  // add upto 2 val max
                maxTillNow += 1
                maxLength = max (maxLength, maxTillNow)
            } else {
                array.append(value)
                array.removeFirst()
            }
        } else {
            // array has value
            maxTillNow += 1
            maxLength = max(maxLength, maxTillNow)
        }
    }
    return maxLength
}

//var a = [1,2,3,2]
var a = [4,2,2,4,2]
//var a = [0,5,4,4,5]
//var a = [4,4]
maxBiValueLength(&a)
