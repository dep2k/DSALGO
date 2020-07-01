import Foundation


func reverseString(_ s: inout [Character]) {
     let count = s.count
     for i in 0..<count / 2 {
         (s[i], s[count - i - 1]) = (s[count - i - 1], s[i])
     }
 }

var str:[Character] = ["y","u","v","i","n"]
reverseString(&str)
