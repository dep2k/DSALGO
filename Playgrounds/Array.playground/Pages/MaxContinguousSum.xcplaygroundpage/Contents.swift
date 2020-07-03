
import Foundation

// Will work if ateast 1 element >= 0
func maxSubArray(_ nums: [Int]) -> Int {
    var maxSoFar = 0
    var maxSum = 0
    
    for value in nums {
        maxSoFar += value
        if maxSoFar < 0 {
            maxSoFar = 0
        }
        if maxSum < maxSoFar {
            maxSum = maxSoFar
        }
    }
    return maxSum
}
