import Foundation

let a = [0,-1,-3]

func findFirstMissingPositiveNumber() -> Int {
    
    var tempArray = Array(repeating: 0, count: a.count)
    for value in a {
        if value > 0 && value <= a.count {
            tempArray[value-1] = 1
        }
    }
    
    for  (index,value) in tempArray.enumerated() {
        if value == 0 {
            return (index + 1)
        }
    }
    
    return tempArray.count + 1
}

findFirstMissingPositiveNumber()
