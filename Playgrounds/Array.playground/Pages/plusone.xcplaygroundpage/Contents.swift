//: [Previous](@previous)

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var output = digits
    for i in stride(from: digits.count - 1, through: 0, by: -1) {
        let carry = (output[i] + 1) >= 10 ? 1 : 0
        if (carry == 1) {
            output[i] = 0
        } else {
            output[i] += 1
            return output
        }
        
        if (i == 0 && carry == 1) {
            output.insert(carry, at: 0)
        }
    }
    return output
}


var input1 = [1,2,3]
var input2 = [9,9,9]
var input3: [Int] = []

var output1 = plusOne(input1)
var output2 = plusOne(input2)
var output3 = plusOne(input3)
