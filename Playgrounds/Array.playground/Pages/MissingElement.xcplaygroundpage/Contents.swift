//: [Previous](@previous)

import Foundation

let a = [6,1,2,5,4]
let n = a.count


let missing = findMissingBySum()
func findMissingBySum() -> Int {
    let expectedSum = (n + 1) * (n +  2)/2
    let actualSum = a.reduce(0) { (result, value) -> Int in
        result + value
    }
    
    return expectedSum - actualSum
}


let missingByDif = findMissingBySubtraction()
func findMissingBySubtraction() -> Int {
    var result = 0
    for (index, value) in a.enumerated() {
        result = result + (value - (index + 1))
    }
    result  = (n+1) - result
    return result
}


let xorMissing = findMissingByXOR()
func findMissingByXOR() -> Int {
    var result = n + 1
    for (index, value) in a.enumerated() {
        result = result ^ (index+1) ^ value
    }
   // result = result ^ (n + 1)
    return result
}
