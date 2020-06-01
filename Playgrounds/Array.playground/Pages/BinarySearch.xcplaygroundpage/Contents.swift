var myArray = [2,3,5,9,10,12,15,17,18]

func binarySearch (array: [Int], searchValue: Int) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    
    while leftIndex <= rightIndex {
    
   let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        if(array[middleIndex] == searchValue) {
            return true
        }
        if searchValue < middleValue {
                rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
        }
   
    return false
    
}

print (binarySearch(array: myArray , searchValue: 9))
