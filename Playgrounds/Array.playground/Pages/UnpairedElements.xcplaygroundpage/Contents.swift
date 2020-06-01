//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let A = [1,2,3,4,1,2,3,5,4]

var result = 0
for (index,value) in A.enumerated() {
    result = value ^ result
}

print (result)
