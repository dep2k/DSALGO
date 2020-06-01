//: [Previous](@previous)

import Foundation
//rotateOddEvenBit()
func rotateOddEvenBit() {
    let binaryMask: UInt8 = 0b10101010
    let number = 233
    let evenMask = Int(binaryMask)

    let evens = evenMask & number
    let evensStr = String(evens, radix: 2)

    let binaryOddMask: UInt8 = 0b01010101
    let oddMask = Int(binaryOddMask)
    let odds = oddMask & number

    let rotation = (evens >> 1) | (odds << 1)

    let original = String(number, radix: 2)
    let binaryRotation = String(rotation, radix: 2)
}
