//: [Previous](@previous)

import Foundation

func leftRotateNumber() {
    let n = 100
    let bits = 8
    let k = 3

    let leftRotatedByK = n << k
    let leftRotatedByKBits = String(leftRotatedByK, radix: 2)

    let leftRotation = (n << k) | (n >> (bits - k))

    let originalBits = String(n, radix: 2)
    let resultBits = String(leftRotation, radix: 2).dropFirst(k)
    let resultingNumber = Int(String(leftRotation, radix:10))
}
