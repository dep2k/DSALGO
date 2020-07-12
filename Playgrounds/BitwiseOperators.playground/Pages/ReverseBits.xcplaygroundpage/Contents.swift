
import Foundation

//Input: 00000010100101000001111010011100
//Output: 00111001011110000010100101000000


func reverseBits(_ n: Int) -> Int {
    var n = n
    var reverse = 0
    for _ in 0..<32 {
        reverse = (reverse << 1) | (n & 1)
        n >>= 1
    }
    return reverse
}

let r = reverseBits(43261596)
