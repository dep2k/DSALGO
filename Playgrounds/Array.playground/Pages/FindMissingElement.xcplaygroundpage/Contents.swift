import UIKit

let array = [1,2,3,4,5,6,7,9,10,11,12,13,14,15]

func findMissingElement () -> Int{
    var missingElement = -1
    
    for (index, value) in array.enumerated() {
        if value != index + 1 {
            missingElement = value - 1
            return missingElement
           }
    }
   
    return missingElement
}

findMissingElement()



let arrayList = [2,4,6,8,10,14,16,18]

func findMissedValue () -> Int {
    var missingElement = -1
    
    for (index, value) in arrayList.enumerated() {
        if value != (index*2) + 2 {
            missingElement = value - 2
            return missingElement
        }
    }
    
    return missingElement
}

findMissedValue()


