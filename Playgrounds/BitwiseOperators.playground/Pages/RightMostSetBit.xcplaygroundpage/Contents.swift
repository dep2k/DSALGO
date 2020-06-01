//: [Previous](@previous)

import Foundation

positionOfRightMostSetBit()
func positionOfRightMostSetBit() {
    var n = 233 // 11101001
    var shift = 1
    var pos = -1
    while (n > 0) {
        if (n & 1) == 1 {
            pos = shift
            break;
        } else {
            n = n >> 1
        }
        shift += 1
    }
    print (pos)
}
