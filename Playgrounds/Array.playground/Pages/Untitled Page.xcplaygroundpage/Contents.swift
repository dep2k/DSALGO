//: [Previous](@previous)

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var updatedArray = digits
    for i in stride(from: digits.count - 1, to: -1, by: -1) {
        let carry = (updatedArray[i] + 1) / 10
        updatedArray[i] = (updatedArray[i] + 1) % 10
        if (carry < 1) {
            return updatedArray
        } else if (i == 0) {
            updatedArray.insert(carry, at: 0)
        }
    }
    return updatedArray
}
