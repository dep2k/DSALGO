//: [Previous](@previous)

import Foundation

//countSetBitsUsingShiftOperator()
func countSetBitsUsingShiftOperator() {
    var n = 233 // 11101001
    var count = 0
    while (n > 0) {
        if (n & 1 == 1) {
            count += 1
        }
        n = n >> 1
    }
    print(count) // should be 5
}
