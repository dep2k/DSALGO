//: [Previous](@previous)

import Foundation

func myPow(_ x: Double, _ n: Int) -> Double {
    var base = x
    var absN = abs(n)
    var result = 1.0
    while absN > 0 {
        if (absN & 1 == 1) {
            result *= base
        }
        base *= base
        absN >>= 1
    }
    return n > 0 ? result : 1 / result
}
