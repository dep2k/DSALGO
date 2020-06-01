import UIKit


func findMinimunDifferenceBetweenTwoConsecutiveElements (array : [Int]) -> Int {
    
    var difference = Int.max
        for i in 0..<array.count-1 {
            let minimumDifference = array[i] - array[i+1]
            if minimumDifference < difference {
                difference = minimumDifference
            }
            
    }
    return (difference)
}

findMinimunDifferenceBetweenTwoConsecutiveElements(array: [25, 18, 16, 7, 6, 3])


func findMinimumDifferenceBetweenAnyTwoElements (array: [Int]) -> Int {
    var difference = Int.max
    for i in 0..<array.count-1 {
        for j in 1..<array.count {
            var minimumDifference = array[i] - array[j]
            if minimumDifference < difference {
                difference = minimumDifference
            }
        }
    }
      return (difference)
}
findMinimumDifferenceBetweenAnyTwoElements(array: [1, 5, 3, 19, 18, 25])



    

