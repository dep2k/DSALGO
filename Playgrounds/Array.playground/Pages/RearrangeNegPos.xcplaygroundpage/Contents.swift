import UIKit

var arrayList = [1,4,-5,3,-4,2,9,-8,7]
var lastNegativeIndex  = 0
var externalVariable = 0
func rearrange() {
    for   (index, value) in arrayList.enumerated() {
        if value < 0 {
            externalVariable = arrayList[lastNegativeIndex]
            arrayList[lastNegativeIndex] = value
            arrayList[index] = externalVariable
            lastNegativeIndex += 1
        }
    }
    
    print (arrayList)
}
rearrange()
